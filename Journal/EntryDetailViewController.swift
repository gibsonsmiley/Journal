//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Michael Mecham on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!
    @IBAction func clearButtonPressed(sender: UIButton) {
        titleTextField.text = ""
        entryTextView.text = ""
        
    }
    
    
    
    @IBAction func entrySaveButtonPressed(sender: AnyObject) {
        if let unwrappedTitleTextFieldText = titleTextField.text {
            
        
        let entry = Entry(title: unwrappedTitleTextFieldText, bodyText: entryTextView.text)
        EntryController.sharedInstance.addEntry(entry)
        self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }
    
    var entry: Entry?
    
    func updateWith(entry: Entry) {
        titleTextField.text = entry.title
        entryTextView.text = entry.bodyText
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let entry = entry {
            updateWith(entry)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        titleTextField.resignFirstResponder()
        return true
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
