//
//  ViewController.swift
//  testPods
//
//  Created by Admin on 11.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import Alamofire
	
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrClubs = [Club]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initializeClubArray()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var DestViewController : PageTwoViewController = segue.destination as! PageTwoViewController
        
        let cell = sender as! ClubCell
        
        DestViewController.name = cell.name.text!
        DestViewController.descrip = cell.cellDescription
        DestViewController.dateText = cell.date.text!
        DestViewController.image = cell.clubPhoto.image!
        
    }
    
    
    func initializeClubArray() {
        let fileName = "jsonForLab2"
        let filePath = Bundle.main.path(forResource: fileName, ofType: "json")
        do {
            let fileData = try! String(contentsOfFile: filePath!, encoding: String.Encoding.utf8)
            let data = fileData.data(using: .utf8)!
            let parsedData = try? JSONSerialization.jsonObject(with: data, options: []) as! NSArray
            for club in parsedData!{
                let arr = club as? NSDictionary
                self.arrClubs.append(
                    Club(
                        name: arr!["title"] as! String,
                        image: UIImage(named: (arr?["img"])! as! String)!,
                        desc: (arr?["description"])! as! String,
                        founding: arr?["founding-date"] as! Int
                    )
                )
            }
        }
        catch {
            print(error)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrClubs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ClubCell
        
        /*cell.cellImage = arrClubs[indexPath.row].image
        cell.cellClubname = arrClubs[indexPath.row].name
        cell.cellDateText = String(arrClubs[indexPath.row].founding)*/
        cell.cellDescription = arrClubs[indexPath.row].desc
        
        cell.clubPhoto.image = arrClubs[indexPath.row].image
        cell.name.text = arrClubs[indexPath.row].name
        cell.date.text = "Year of foundation: " + String(arrClubs[indexPath.row].founding)
        
        return cell
    }
    
}

