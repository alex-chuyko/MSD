//
//  ClubClass.swift
//  lab2New
//
//  Created by Admin on 12.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import UIKit

class Club {
    var name : String
    var image : UIImage
    var desc : String
    var founding : Int
    
    init(name: String, image: UIImage, desc: String, founding: Int) {
        self.name = name
        self.desc = desc
        self.image = image
        self.founding = founding
    }
}
