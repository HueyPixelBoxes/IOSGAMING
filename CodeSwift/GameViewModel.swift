import Foundation

class GameSetting : ObservableObject{
    var diff_name : String
    var upper_limit : Int
    var lower_limit : Int
    var lives : Int
    var rerolls : Int

    init(settingName: String){
        self.diff_name = settingName // name for setting - difficulties
        switch settingName{
            case "Childplay": 
                self.upper_limit = 10
                self.lower_limit = 4
                self.lives = 7 // lives for losing a game
                self.rerolls = 7 // to select a dice and reroll dice
            case "Gambler":
                self.upper_limit = 12
                self.lower_limit = 2
                self.lives = 5
                self.rerolls = 5
            default: 
                self.upper_limit = 11
                self.lower_limit = 3
                self.lives = 6
                self.rerolls = 6
        }
    }
}

class GameViewModel : ObservableObject{
    @Published var left_die : Int
    @Published var right_die : Int
    @Published var win : Int
    @Published var settingName : String
    @Published var conditionWinning : Int
    @Published var conditionSignBigger : Bool
    @Published var setting = GameSetting(settingName)

    @Published var maxLives : Int
    @Published var currentLives : Int


    init(){
        self.maxLives = setting.lives
        self.currentLives = setting.lives
    }
    func roll(){
        if(setting.rerolls > 0){
            self.left_die = Int.Random(1...6)
            self.left_die = Int.Random(1...6)
        }
        setting.reroll -= 1;
    }
    func check_win_condition(){
        self.condition_winning = Int.Random(setting.lower_limit...setting.upper_limit)
        self.conditionSignBigger = Bool.random()
        if(self.conditionSignBigger && (self.left_die + self.right_die) > condition_winning)
        || (!self.conditionSignBigger && (self.left_die + self.right_die) < condition_winning)
        {
            self.win += 1
            self.currentLives < self.maxLives ? self.currentLives += 1 : self.currentLives += 0
        }
        else
        {
            self.currentLives -= 1
        }
    }

    
}



