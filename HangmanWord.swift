//
//  HangmanWord.swift
//  Hangman
//
//  Created by Jose R Ramirez A on 10/22/14.
//  Copyright (c) 2014 J.Ramirez. All rights reserved.
//

import Foundation

// Class that implements hangman game

let wordBank: [String] = ["ropable",
    "fafnir",
    "subrange",
    "threnody",
    "sfax",
    "pyrogallol",
    "abrogating",
    "gingal",
    "duniwassal",
    "plaza",
    "dratting",
    "ingrowth",
    "figurehead",
    "mochica",
    "unstarred",
    "represcribe",
    "gradational",
    "laxness",
    "allotropic",
    "caissoned",
    "cassava",
    "subport",
    "trueing",
    "japer",
    "nutmeg",
    "appear",
    "subsatiric",
    "logicising",
    "modular",
    "caddishly",
    "vim",
    "millionaire",
    "aluminized",
    "solvate",
    "diazin",
    "holm",
    "hoatching",
    "cytoplast",
    "icarian",
    "asperse",
    "esuriently",
    "spermatium",
    "diesinking",
    "calabash",
    "puggree",
    "favoredly",
    "lehmbruck",
    "jivaro",
    "kaiser",
    "slovensko",
    "buckler",
    "divvying",
    "saleratus",
    "pineapple",
    "chart",
    "beaton",
    "rockville",
    "egression",
    "irefulness",
    "ladrones",
    "neutral",
    "dissuadable",
    "angary",
    "dank",
    "backset",
    "angleworm",
    "computative",
    "extremity",
    "flaking",
    "chafeweed",
    "frostfishes",
    "homoerotism",
    "lace",
    "piazzaed",
    "osiris",
    "nowhence",
    "wolf",
    "umber",
    "baragnosis",
    "grimy",
    "sun",
    "nonpaternal",
    "acrobatism",
    "trophi",
    "penis",
    "corvine",
    "glaciating",
    "strangulate",
    "prehensile",
    "activated",
    "loricate",
    "fruitery",
    "worker",
    "pleopod",
    "sidon",
    "longeing",
    "pantaloons",
    "exogenism",
    "denticulate",
    "greggriffin"]

func IsContained(char: String, word: String) -> Bool
{
    for letter in word
    {
        for c in char
        {
            if c == letter
            {
                return true
            }
        }
    }
    return false
}

func RandomWord() -> String
{
    let random: Int = Int(arc4random()) % wordBank.count
    
    return wordBank[random]
}

class HangmanWord {

    var mWord: String = ""
    var mGuess: [Int:Bool] = [Int:Bool]()
    var mLife: Int = 0
  
    init(word: String)
    {
        if word == ""
        {
            mWord = RandomWord()
        }
        else
        {
            mWord = word
        }
        
        var i = 0
        for c in mWord
        {
            mGuess[i] = false;
            i++
        }
    }
    
    func IsWordGood() -> Bool {
        
        if true
        {
            // check that is it only letters
            // no spaces, numbers or punctuation
            return true
        }
        //return false
    }
    
    func Replace(char: String) -> ()
    {
        var i = 0
        for letter in mWord
        {
            for c in char
            {
                if c == letter
                {
                    mGuess[i] = true
                }
            }
            i++
        }
    }
    
    func GuessCharacter(char: String) -> Bool
    {
        if IsContained(char, mWord) // check if character is in string
        {
            Replace(char)
            return true

        }
        else
        {
            ReduceLife()
            return false
        }
    }
    
    func ReduceLife() -> ()
    {
        if mLife != 9
        {
            mLife += 1
        }
    }
    
    func GetLife() -> Int
    {
        return mLife
    }
    
    func HasGuessedWord() -> Bool
    {
        for (key,pair) in mGuess
        {
            if pair == false
            {
                return false
            }
        }
        return true
    }
    
    func GetGuess() -> String{
        
        var i = 0
        var result: String = ""
        
        for char in mWord
        {
            if (mGuess[i] == true)
            {
                result.append(char)
                result += " "
            }
            else
            {
                result += "_ "
            }
            i++
        }

        return result
    }
    
}