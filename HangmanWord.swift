//
//  HangmanWord.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import Foundation

class HangmanWord {
    
    var mWord: String
    
    init(word: String){
        mWord = word
    }
    
    func IsWordGood() -> BooleanType {
        
        if mWord == "Hangman"
        {
            return true
        }
        else
        {
            return false
        }
    }
}