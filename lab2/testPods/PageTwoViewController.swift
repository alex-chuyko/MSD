//
//  PageTwoViewController.swift
//  testPods
//
//  Created by Admin on 12.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import UIKit

class PageTwoViewController: UIViewController {
    @IBOutlet weak var clubPhoto: UIImageView!
    @IBOutlet weak var clubName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var textView: UITextView!

    
    var descrip = String()
    var name = String()
    var dateText = String()
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        clubPhoto.image = image
        textView.text = descrip
        clubName.text = name
        date.text = dateText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
