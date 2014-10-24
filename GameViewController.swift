//
//  GameViewController.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField:UITextField?
    @IBOutlet var imageView:UIImageView?
    
    var mHangmanWord:HangmanWord = HangmanWord(word: "")
    
    var imageNames = ["Hangman Game 1",
        "Hangman Game 2",
        "Hangman Game 3",
        "Hangman Game 4",
        "Hangman Game 5",
        "Hangman Game 6",
        "Hangman Game 7",
        "Hangman Game 8",
        "Hangman Game 9",
        "Hangman Game 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField!.becomeFirstResponder()
        textField!.text = mHangmanWord.GetGuess()
        
        self.SetImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func SetImage() -> (){
        
        self.CheckGameStatus()
        var newImage = UIImage(named: imageNames[self.mHangmanWord.GetLife()])
        self.imageView!.image = newImage
    
    }
    
    func GameOver() -> ()
    {
        self.performSegueWithIdentifier("GameOver", sender: self)
    }
    
    func HasGuessedCorrectly() -> ()
    {
        self.performSegueWithIdentifier("HasGuessedCorrectly", sender: self)
    }
    
    func CheckGameStatus() -> ()
    {
        if self.mHangmanWord.GetLife() == 9
        {
            self.GameOver()
        }
        if self.mHangmanWord.HasGuessedWord()
        {
            self.HasGuessedCorrectly()
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString: String) -> Bool {
        
        self.CheckGameStatus()
        
        self.mHangmanWord.GuessCharacter(replacementString)
        
        textField.text = mHangmanWord.GetGuess()
        
        self.SetImage()
        
        return false
    }
    
    @IBAction func quit(sender: AnyObject?){
        textField!.resignFirstResponder()
        self.performSegueWithIdentifier("endGame", sender:self)
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
