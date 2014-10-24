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
    
    var life: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set starting image for game
        // Do any additional setup after loading the view.
        
        //show keyboard and intial text in label
        textField!.becomeFirstResponder()
        textField!.text = "_ _ _ _ _"
        
        self.SetImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetImage() -> (){
        
        if self.life == 10
        {
            self.life = 0
        }

        var newImage = UIImage(named: imageNames[life])
        self.imageView!.image = newImage
        
        life += 1

    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString: String) -> Bool {
        // do something with replacementString
        
        self.textField!.text = replacementString
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
