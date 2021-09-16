//
//  NewsFeedCell.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 16.09.2021.
//

import UIKit

class NewsFeedCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var previewLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    
    var appleNews: AppleNews! {
        didSet {
            updateNews()
        }
    }
    
    func updateNews() {
        //newsImageView.image =
        titleLable.text = appleNews.header
        previewLabel.text = appleNews.brief
        dateLabel.text = appleNews.date
    }
}
