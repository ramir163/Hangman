//
//  HangmanWord.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import Foundation

// Class that implements hangman game
class HangmanWord {
    
    var mWord: String
    var mGuess: String
    var mLife: Int
    
    init(word: String){
        
        mWord = word
        mGuess = ""
        mLife = 0
        
        if IsWordGood()
        {
            mLife = 10
            mGuess = ""
        
            for character in mWord
            {
                mGuess += "_ "
            }
        }
    }
    
    func IsWordGood() -> Bool {
        
        if mWord == "Secret"
        {
            // check that is it only letters
            // no spaces, numbers or punctuation
            return true
        }
        else
        {
            return false
        }
    }
    
    func GuessCharacter(char: Character) -> Bool
    {
        if mWord == "Hangman" // check if character is in string
        {
            // put char in correct index in mGuess
            return true

        }
        
        mLife -= 1
        return false
        
    }
    
    func GetLife() -> Int
    {
        return mLife
    }
    
}