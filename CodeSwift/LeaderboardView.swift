//
//  LeaderboardView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct LeaderboardView: View {
    @State var isPressed = false
    @State var currentPage = Page.Board
    
    var body: some View {
        VStack{ // view explain mechanics
            if currentPage == .Board{
                Button{
                    isPressed = true
                    currentPage = .Menu
                }label:{
                        Image(!isPressed ? "blankunpressed" : "blankpressed")
                            .resizable().scaledToFit().frame(height: 60)
                }.buttonStyle(.plain).padding(10)
            }
            else{
                MenuView()
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
