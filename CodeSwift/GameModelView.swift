import Foundation

class GameViewModel : ObservableObject{
    @Published var left_die = 1
    @Published var right_die = 1
    @Published var win = 0
    @Published var conditionWinning = 0
    @Published var conditionSignBigger = false
    
    @Published var maxLives = 0
    @Published var currentLives = 0
    
    @Published var diff_name = ""
    var upper_limit = 0
    var lower_limit = 0
    @Published var rerolls : Int = 0
    @Published var maxRerolls : Int = 0

    func settingCreate(settingName: String){
        self.diff_name = settingName // name for setting - difficulties
        switch settingName{
            case "Childplay":
                self.upper_limit = 10
                self.lower_limit = 4
                self.maxLives = 7 // lives for losing a game
                self.rerolls = 7 // to select a dice and reroll dice
            case "Gambler":
                self.upper_limit = 12
                self.lower_limit = 2
                self.maxLives = 5
                self.rerolls = 5
            default:
                self.upper_limit = 11
                self.lower_limit = 3
                self.maxLives = 6
                self.rerolls = 6
        }
        self.currentLives = self.maxLives
        self.maxRerolls = self.rerolls
        self.setWinCondition()
    }
    func setWinCondition(){
        self.conditionSignBigger = Bool.random()
        self.conditionWinning = Int.random(in: self.lower_limit ... self.upper_limit)
    }
    func roll(){
        if(self.rerolls > 1){
            self.left_die = Int.random(in: 1...6)
            self.right_die = Int.random(in: 1...6)
            self.rerolls -= 1;
        }else{
            self.rerolls = 0
        }
    }
    func check_win_condition(){
        let total = (self.left_die + self.right_die)
        if(self.conditionSignBigger && total >= self.conditionWinning)
        {
            self.win += 1
            self.rerolls = maxRerolls
        }
        else if (!self.conditionSignBigger && total <= self.conditionWinning)
        {
            self.win += 1
            self.rerolls = maxRerolls
        }
        else
        {
            self.currentLives -= 1
        }
    }

    
}





