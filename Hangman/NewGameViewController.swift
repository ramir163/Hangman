//
//  NewGameViewController.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import UIKit

class NewGameViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var textField:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
            // give hangman model the word
        if textField.text == "hello"
        {
            textField.text = "invalid"
        }
    }

    
    @IBAction func clickedButton(sender: AnyObject?) {
     
        var mHangman = HangmanWord(word: textField!.text)
        
        if mHangman.IsWordGood()
        {
            self.performSegueWithIdentifier("New2PlayerGame", sender: self)
        }
        else
        {
            // alert user word is invalid
        }

    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
