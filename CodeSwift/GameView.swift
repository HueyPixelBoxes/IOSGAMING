//
//  GameView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var setting : GameViewModel
    var body: some View {
        VStack{
            if setting.currentLives > 0
            { // if live > 0                
                
                Text("LIVES : \(setting.currentLives)").font(.custom("Sol Schori Bold", size: 30)).padding(10) //set lives
                HStack {
                    Text("WINS : \(setting.win)").font(.custom("Sol Schori Bold", size: 18)).padding(5)
                }
                Text("\(setting.conditionSignBigger ? ">" : "<") \(setting.conditionWinning)").font(.custom("Sol Schori Bold", size: 18)).padding(5)
                HStack{
                    Image("\(setting.left_die)").resizable().scaledToFit().frame(width: 120).padding(10)
                    Image("\(setting.right_die)").resizable().scaledToFit().frame(width: 120).padding(10)
                }
                Text("Rerolls : \(setting.rerolls)").font(.custom("Sol Schori Bold", size: 18)).padding(5)
                HStack{
                    Button{
                        setting.roll()
                    }label:{
                            Text("Roll").font(.custom("Sol Schori Bold", size: 18))
                            .padding(10)
                    }.buttonStyle(.plain)
                    
                    
                    Button{
                        setting.check_win_condition()
                        setting.setWinCondition()
                        setting.roll()
                    }label:{
                            Text("Check").font(.custom("Sol Schori Bold", size: 18))
                            .padding(10)
                }
                
                }.buttonStyle(.plain)
            }
            else{
                DeathView(setting: GameViewModel())
            }
        }
            
    }
}


