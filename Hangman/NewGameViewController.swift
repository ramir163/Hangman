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
        textField!.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        //textField!.becomeFirstResponder()
    }
    
    
    @IBAction func clickedButton(sender: UIButton?) {
     
        var mHangman = HangmanWord(word:"test") //textField!.text)
        
        if mHangman.IsWordGood()
        {
            self.performSegueWithIdentifier("newGame", sender: self)
        }
        else
        {

        }

    }
    
    @IBAction func doneEnteringWord(sender: UITextField?){
        
        sender!.resignFirstResponder()
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
