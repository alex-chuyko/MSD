//
//  NewsCell.swift
//  testPods
//
//  Created by Admin on 18.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsData: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    
    var title = String()
    var url = String()
    var date = String()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
