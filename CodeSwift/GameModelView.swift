//
//  GameModelView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 05/09/2023.
//

import Foundation

import Foundation

class Dice {
    var value : Int
    var isSelected : Bool
    
    init(val : Int, select : Bool){
        self.value = val
        self.isSelected = select
    }
}

class GameSetting : ObservableObject{
    var diff_name : String
    var upper_limit_dice : Int
    var lower_limit_dice : Int
    var difference_tolerance : Int
    var lives : Int
    var rerolls : Int

    let pos_min_dice = 2
    let pos_max_dice = 12

    init(settingName: String){
        self.diff_name = settingName // name for setting - difficulties
        switch settingName{
            case "Childplay":
                self.upper_limit_dice = 5 // for condition "larger than" value from 2 ... 5
                self.lower_limit_dice = 9 // for condition "lower than" value from 9 ... 12
                self.difference_tolerance = 5 // for condition between
                self.lives = 5 // lives for losing a game
                self.rerolls = 5 // to select a dice and reroll dice
            case "Gambler":
                self.upper_limit_dice = 9
                self.lower_limit_dice = 5
                self.difference_tolerance = 3
                self.lives = 2
                self.rerolls = 2
            default:
                self.upper_limit_dice = 7
                self.lower_limit_dice = 7
                self.difference_tolerance = 4
                self.lives = 3
                self.rerolls = 3
        }
    }
}

//class GameViewModel : ObservableObject{
//    @Published var die : [Dice] = []
//    @Published var highscore : Int
//    @Published var settingName : String
//    @Published var biggerVal:Int
//    @Published var smallerVal : Int
//    var setting = GameSetting(settingName: "")
//
//    init(){
//        self.die = [Dice(val: 0, select: true), Dice(val: 0, select: true)]
//    }
//
//}


