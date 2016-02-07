//
//  EntryController.swift
//  Journal
//
//  Created by Gibson Smiley on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    private let entryKey = "entry"
    
    static let sharedInstance = EntryController()
    
    var entriesArray: [Entry]
    
    init () {
        
        self.entriesArray = []
        self.loadFromPersistentStore()
    }
    
    func loadFromPersistentStore() {
        let entryDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entryKey) as? [[String : AnyObject]]
        
        if let entryDictionary = entryDictionariesFromDefaults{
            self.entriesArray = entryDictionary.map({Entry(dictionary: $0)!})
        }
    }
    
    func saveToPeristentStorage() {
        let entryDictionaries = self.entriesArray.map({$0.dictionaryCopy()})
        NSUserDefaults.standardUserDefaults().setObject(entryDictionaries, forKey: entryKey)
    }
    
    func addEntry (entry: Entry) {
        entriesArray.append(entry)
        self.saveToPeristentStorage()
    }
    

    func removeEntry (atIndexPath: NSIndexPath) {
        entriesArray.removeAtIndex(atIndexPath.row)
        
        
    }
    
}