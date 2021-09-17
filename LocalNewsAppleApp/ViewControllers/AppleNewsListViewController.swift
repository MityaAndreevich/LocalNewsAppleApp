//
//  AppleNewsListViewController.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

import UIKit

class AppleNewsListViewController: UITableViewController {

    var appleNews: [AppleNews] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        //tableView.estimatedSectionHeaderHeight = 44
        
        tableView.rowHeight = 100
        tableView.sectionHeaderHeight = 33
        tableView.sectionFooterHeight = 0
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        appleNews.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        appleNews[section].header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let news = appleNews[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = news.brief
        content.secondaryText = news.date
        content.image = UIImage(named: news.header)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
