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
    
    var mHangmanWord:HangmanWord = HangmanWord(word: "2PLAYERGAME")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField!.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "newGame2Player"
        {
            var destinationViewController: GameViewController = segue.destinationViewController as GameViewController
            destinationViewController.mHangmanWord = self.mHangmanWord
        }
    }
    
    @IBAction func clickedButton(sender: UIButton?)
    {
        self.mHangmanWord = HangmanWord(word:self.textField!.text)
        
        if self.mHangmanWord.IsWordGood()
        {
            self.performSegueWithIdentifier("newGame2Player", sender: self)
        }
        else
        {
            var alert: UIAlertController
            
            if (countElements(mHangmanWord.GetWord()) < 2)
            {
                alert = UIAlertController(title: "Word Length", message: "Word is too short, please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            }
            else
            {
                alert = UIAlertController(title: "Word Length", message: "Word is too long, please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            }
            
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }

    }
    
    @IBAction func doneEnteringWord(sender: UITextField?)
    {
        sender!.resignFirstResponder()
    }

}
