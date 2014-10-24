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
            // alert user word does not work
        }

    }
    
    @IBAction func doneEnteringWord(sender: UITextField?)
    {
        sender!.resignFirstResponder()
    }

}
