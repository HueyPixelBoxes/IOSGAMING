import SwiftUI

struct Player : Identifiable{
    var id = UUID()
    var name : String
    var high_score : Int
    var achivement : Achivement
    var game_played : Int
    var win_percent : Int
    var double_dice : Int
}

struct Achivement : Identifiable{
    var id = Int
    var name : String
    var description : String
}
