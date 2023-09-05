//
//  MenuView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

enum Page{
    case Menu
    case Game
    case Guide
    case Board
    case Death
}

struct MenuView: View {
    @State private var gameIsPressed = false
    @State private var guideIsPressed = false
    @State private var boardIsPressed = false
    @State private var currentPage = Page.Menu
    
    var body: some View {
        VStack{
            if currentPage == .Menu{
                Image("theme.png")
                Text("ROLL FOR DIME").font(.custom("Sol Schori Bold", size: 90)).multilineTextAlignment(.center)
                Button{
                    gameIsPressed = true
                    currentPage = .Game
                } label:{
                    VStack{
                        Image(!gameIsPressed ? "blankunpressed" : "blankpressed")
                            .resizable().scaledToFit().frame(height: 120)
                        Text("Game").font(.custom("Sol Schori Bold", size: 20))
                    }
                }.buttonStyle(.plain)

                Button{
                    guideIsPressed = true
                    currentPage = .Guide
                } label:{
                    VStack{
                        Image(!guideIsPressed ? "blankunpressed" : "blankpressed")
                            .resizable().scaledToFit().frame(height: 120)
                        Text("How To Play").font(.custom("Sol Schori Bold", size: 20))
                    }
                }.buttonStyle(.plain)

                Button{
                    boardIsPressed = true
                    currentPage = .Board
                } label:{
                    VStack{
                        Image(!boardIsPressed ? "blankunpressed" : "blankpressed")
                            .resizable().scaledToFit().frame(height: 120)
                        Text("LeaderBoard").font(.custom("Sol Schori Bold", size: 20))
                    }
                }.buttonStyle(.plain)
            }
            else{
                switch currentPage {
                case .Game:
                    SettingView()
                case .Guide:
                    HowToPlayView()
                case .Board:
                    LeaderboardView()
                default:
                    MenuView()
                }
                
            }
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
