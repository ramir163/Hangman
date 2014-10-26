//
//  WonGameViewController.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/26/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet var messageLabel:UILabel?
    @IBOutlet var resultLabel:UILabel?
    @IBOutlet var navigationBar:UINavigationBar?
    
    var mHangmanWord:HangmanWord = HangmanWord(word: "Won Game")
    
    let mWinningQuotesBank: [String] = ["Winning isn't everything.",
    "Winning is a habit, but so is losing.",
    "If winning isn't everything, why do they keep score?",
    "Congrats, you won.",
    "Winning takes precedence over all.",
    "The thrill isn't in the winning, it's the doing.",
    "Winning is only half of it."]
    
    
    let mLosingQuotesBank: [String] = ["You learn more from losing than winning.",
    "Experience is the name we give our mistakes.",
    "You lost, try again.",
    "Losing is only half of it.",
    "Losers live in the past",
    "Losing is a habit, but so is winning.",
    "There are more important things in life than winning."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (self.mHangmanWord.HasGuessedWord())
        {
            self.messageLabel!.text = self.mWinningQuotesBank[ Int(arc4random())%self.mWinningQuotesBank.count]
            self.resultLabel!.text = "Congrats, word was: " + mHangmanWord.GetWord()

        }
        else
        {
            self.messageLabel!.text = self.mLosingQuotesBank[ Int(arc4random())%self.mLosingQuotesBank.count]
            self.resultLabel!.text = "Game over, word was: " + mHangmanWord.GetWord()
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
