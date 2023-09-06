//
//  DeathView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

import SwiftUI

struct DeathView: View {
    @State private var currentPage = Page.Death
    @ObservedObject var setting : GameViewModel
    var body: some View {
        VStack{
            // death image
            // go to menu, save game
            VStack{
                if currentPage == .Death{
                    Image("death")
                    Text("YOU ARE DEAD").font(.custom("Sol Schori Bold", size: 40))
                    Text("\(setting.win)").font(.custom("Sol Schori Bold", size: 35))
                    Button{
                        currentPage = .Menu
                    }label:{
                            Text("Return to menu").font(.custom("Sol Schori Bold", size: 30))
                    
                    }.buttonStyle(.plain).padding(20)
                    Button{
                        currentPage = .Game
                    }label:{
                        
                            Text("Play Again").font(.custom("Sol Schori Bold", size: 30))
                    }.buttonStyle(.plain)
                }
                else{
                    switch currentPage {
                    case .Menu:
                        MenuView()
                    case .Game:
                        SettingView()
                    default:
                        DeathView(setting: GameViewModel())
                    }
                }
            }
        }
    }
}
