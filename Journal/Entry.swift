//
//  Entry.swift
//  Journal
//
//  Created by Gibson Smiley on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    var timestamp = NSDate()
    var title: String?
    var bodyText: String?
    
    init (title: String?, bodyText: String?) {

        self.title = title
        self.bodyText = bodyText
    }
    
    init?(coder aDecoder: NSCoder) {
        return nil
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        return
    }
    
}

func == (lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timestamp == rhs.timestamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
}


