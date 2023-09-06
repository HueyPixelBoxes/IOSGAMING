//
//  LeaderboardView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct LeaderboardView: View {
    @State var currentPage = Page.Board
    
    var body: some View {
        VStack{ // view explain mechanics
            if currentPage == .Board{
                Button{
                    currentPage = .Menu
                }label:{
                    Text("Return").font(.custom("Sol Schori Bold", size: 20))
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
