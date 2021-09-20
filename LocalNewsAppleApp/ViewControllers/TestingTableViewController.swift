//
//  TestingTableViewController.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 19.09.2021.
//

import UIKit

class TestingTableViewController: UITableViewController {
    
    var appleTestNews: [AppleNews] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //self.registerTableViewCells()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        appleTestNews.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell {
            
            let news = appleTestNews[indexPath.row]
            cell.newsHeader?.text = news.header
            cell.newsBrief?.text = news.brief
            cell.newsDate?.text = news.date
            cell.newsRating?.text = news.raiting
            cell.mainImage?.image = UIImage(named: news.header)
            
            return cell
        }
        return UITableViewCell()
        //return cell
    }

    //private func registerTableViewCells() {
       // let customCell = UINib(
          //  nibName: "CustomTableViewCell",
           // bundle: nil
        //)
        
       // self.tableView.register(customCell, forCellReuseIdentifier: "CustomTableViewCell")
    //}
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    //}
    

}
