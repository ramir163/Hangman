//
//  GameViewController.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label:UITextField?
    @IBOutlet var image:UIImageView?
    let mHangmanWord = HangmanWord(word: "Hangman")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set starting text for game
        label!.text = "_ _ _ _"
        
        // set starting image for game
        // Do any additional setup after loading the view.
        
        //show keyboard
        label!.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return false
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString: String) -> Bool {
        
        label!.text = replacementString
        return false
    }
    
    // function that is called when keyboard is pressed

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
