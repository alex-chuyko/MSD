//
//  ClubCell.swift
//  testPods
//
//  Created by Admin on 12.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ClubCell: UITableViewCell {

    @IBOutlet weak var clubPhoto: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var cellDescription = String()
    /*var cellClubname = String()
    var cellDateText = String()
    var cellImage = UIImage()*/
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        /*clubPhoto.image = cellImage
        name.text = cellClubname
        date.text = "Year of foundation: " + cellDateText*/
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
