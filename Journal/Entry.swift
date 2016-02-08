//
//  Entry.swift
//  Journal
//
//  Created by Gibson Smiley on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    private var timestampKey = "timestampKey"
    private var titleKey = "titleKey"
    private var bodyTextKey = "bodyTextKey"
 
    var timestamp = NSDate()
    var title: String
    var bodyText: String
    
    init (title: String, bodyText: String) {
        self.title = title
        self.bodyText = bodyText
    }
    
    init?(dictionary: [String : AnyObject]) {
        guard let //timestamp = dictionary[timestampKey] as? NSDate,
            title = dictionary[titleKey] as? String,
            bodyText = dictionary[bodyTextKey] as? String else {
               // self.timestamp = NSDate()
                self.title = ""
                self.bodyText = ""
                return nil
        }
        //self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
    func dictionaryCopy() -> [String : AnyObject] {
        let dictionary: [String: AnyObject] = [
            //timestampKey : "\(self.timestamp)",
            titleKey : self.title,
            bodyTextKey : self.bodyText
        ]
        return dictionary
    }
    
}

func == (lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timestamp == rhs.timestamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
}


