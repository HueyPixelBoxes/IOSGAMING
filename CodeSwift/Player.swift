//
//  Player.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 05/09/2023.
//

import Foundation

class Player{
    var name : String
    var high_score : Int
    var achivement : Achivement
    var game_played : Int
    var win_percent : Int
    var double_dice : Int
    
    init(name: String, high_score: Int, achivement: Achivement, game_played: Int, win_percent: Int, double_dice: Int) {
        self.name = name
        self.high_score = high_score
        self.achivement = achivement
        self.game_played = game_played
        self.win_percent = win_percent
        self.double_dice = double_dice
    }
}

class Achivement{
    var name : String
    var description : String
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
