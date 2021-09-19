//
//  CustomTableViewCell.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 19.09.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var newsHeader: UILabel!
    @IBOutlet weak var newsBrief: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsRating: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
