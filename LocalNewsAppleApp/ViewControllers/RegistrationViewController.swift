//
//  RegistrationViewController.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 19.09.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var rePasswordTextField: UITextField!
    
    @IBOutlet var registerButton: UIButton!
    
    // MARK: - Public Properties
    var delegate: RegistrationViewControllerDelegate!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = 15
    }
    
    // MARK: - IB Actions
    @IBAction func registerButtonPressed() {
        
        if emailTextField.text == "" || passwordTextField.text == "" ||
            rePasswordTextField.text == "" {
            showAlert(with: "Please, fill in all fields")
            return
        } else if passwordTextField.text != rePasswordTextField.text {
            showAlert(with: "Passwords must match")
            return
        } else if !isValidEmail(stringValue: emailTextField.text ?? "") {
            showAlert(with: "Invalid email address")
            return
        } else {
            delegate.getLoginDetails(
                email: emailTextField.text ?? "",
                password: passwordTextField.text ?? ""
            )
        }
        
        dismiss(animated: true)
    }
    
    @IBAction func backButtonPressed() {
        dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func showAlert(with title: String) {
        let alert = UIAlertController(
            title: title,
            message: nil,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func isValidEmail(stringValue: String) ->Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: stringValue)
    }
}

// MARK: - UITextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            rePasswordTextField.becomeFirstResponder()
        }
        return true
    }
}
