//
//  DeathView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

import SwiftUI

struct DeathView: View {
    @State private var isPressedMenu = false
    @State private var isPressedGame = false
    @State private var currentPage = Page.Death
    var body: some View {
        VStack{
            // death image
            // go to menu, save game
            VStack{
                if currentPage == .Death{
                    Image("death")
                    Text("YOU ARE DEAD").font(.custom("Sol Schori Bold", size: 40))
                    Button{
                        isPressedMenu = true
                        currentPage = .Menu
                    }label:{
                        VStack{
                            Image(!isPressedMenu ? "blankunpressed" : "blankpressed")
                                .resizable().scaledToFit().frame(height: 120)
                            Text("Return to menu").font(.custom("Sol Schori Bold", size: 30))
                        }
                    }.buttonStyle(.plain)
                    Button{
                        isPressedGame = true
                        currentPage = .Game
                    }label:{
                        VStack{
                            Image(!isPressedGame ? "blankunpressed" : "blankpressed")
                                .resizable().scaledToFit().frame(height: 120)
                            Text("Play Again").font(.custom("Sol Schori Bold", size: 30))
                        }
                    }.buttonStyle(.plain)
                }
                else{
                    switch currentPage {
                    case .Menu:
                        MenuView()
                    case .Game:
                        SettingView()
                    default:
                        DeathView()
                    }
                }
            }
        }
    }
}
struct DeathView_Previews: PreviewProvider {
    static var previews: some View {
        DeathView()
    }
}
