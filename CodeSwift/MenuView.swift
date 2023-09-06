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
    @State private var currentPage = Page.Menu
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        VStack{
            if currentPage == .Menu{
                Text("ROLL FOR DIME").font(.custom("Sol Schori Bold", size: 90)).multilineTextAlignment(.center)
                Button{
                    currentPage = .Game
                } label:{
                    ZStack{
                        Text("Game").font(.custom("Sol Schori Bold", size: 40))
                    }
                }.buttonStyle(.plain).padding(20)

                Button{
                    currentPage = .Guide
                } label:{
                        Text("How To Play").font(.custom("Sol Schori Bold", size: 40))
                }.buttonStyle(.plain).padding(20)

                Button{
                    currentPage = .Board
                } label:{
                    
                        Text("LeaderBoard").font(.custom("Sol Schori Bold", size: 40))
                    
                }.buttonStyle(.plain).padding(20)
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
        MenuView().environment(\.colorScheme, .light)
    }
}
