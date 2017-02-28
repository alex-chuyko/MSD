//
//  NewsViewController.swift
//  testPods
//
//  Created by Admin on 18.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import Alamofire

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var newsArray = [News]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNews()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadNews() {
        Alamofire.request("https://meduza.io/api/v3/search?chrono=news&page=0&per_page=20&locale=ru").responseJSON{ response in
            
            if (response.result.value != nil) {
                let json = response.result.value as! NSDictionary
                let collections = json["collection"] as! NSArray
                let documents = json["documents"] as! NSDictionary
                
                for key in collections {
                    let news = documents[key] as! NSDictionary
                    self.newsArray.append(News(newsInfo: news))
                }
                
                self.tableView.reloadData()
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsCell
        cell.url = "https://meduza.io/" + newsArray[indexPath.row].url
        
        cell.newsData.text = newsArray[indexPath.row].title
        cell.newsDate.text = newsArray[indexPath.row].date
        
        return cell
    }


}
