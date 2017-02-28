//
//  NewsClass.swift
//  testPods
//
//  Created by Admin on 18.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

class News {
    var title : String
    var url : String
    var date : String
    
    init(newsInfo: NSDictionary) {
        self.title = newsInfo["title"] as! String
        self.url = newsInfo["url"] as! String
        self.date = newsInfo["pub_date"] as! String //Date(timeIntervalSince1970: TimeInterval(newsInfo["published_at"] as! Int64))
    }
}
