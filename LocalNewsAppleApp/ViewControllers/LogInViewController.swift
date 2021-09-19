//
//  LogInViewController.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

import UIKit

protocol RegistrationViewControllerDelegate {
    func getLoginDetails(email: String, password: String)
}

class LogInViewController: UIViewController {
    
    
    
    // MARK: - IB Outlets
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    // MARK: - Private Properties
    private var users = User.getUsers()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 15
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let registrationVC = segue.destination as? RegistrationViewController else { return }
        
        registrationVC.delegate = self
    }
    
    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        if !users.contains(where:
                            {
                                $0 == User(email: emailTextField.text ?? "",
                                           password: passwordTextField.text ?? ""
                                )}) {
            showAlert(with: "Invalid email or password",
                      and: "Please, enter correct email and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    // MARK: - Private Methods
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - RegistationViewControllerDelegate
extension LoginViewController: RegistrationViewControllerDelegate {
    func getLoginDetails(email: String, password: String) {
        users.append(User(email: email, password: password))
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "showNews", sender: nil)
        }
        return true
    }
}
