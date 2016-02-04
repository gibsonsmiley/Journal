//
//  EntryController.swift
//  Journal
//
//  Created by Gibson Smiley on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    let entriesArray: [String]
    
    init () {
        
        self.entriesArray = []
    }
    
    func addEntry (entry: Entry) {
        entriesArray.append(entry)
    }
    
//                              ???????
    func removeEntry (entry: Entry, atIndexPath: NSIndexPath) {
        entriesArray.removeAtIndex(entry, atIndexPath)
    }
    
}