//
//  HowToPlayView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct HowToPlayView: View {
    @State private var currentPage = Page.Guide
    var body: some View {
        VStack{ // view explain mechanics
                if currentPage == .Guide{
                    HStack{
                        Button{                        currentPage = .Menu
                        }label:{
                            Text("Return").font(.custom("Sol Schori Bold", size: 20))
                        }.buttonStyle(.plain).padding(10)
                        Spacer()
                    }
                    Spacer()
                    Text("Roll the dice")
                        .font(.custom("Sol Schori Bold", size: 20)).padding(10)
                    Text("Rerolls to try again")
                        .font(.custom("Sol Schori Bold", size: 20)).padding(10)
                    Text("Check win condition")
                        .font(.custom("Sol Schori Bold", size: 20)).padding(10)
                    Text("Win game")
                        .font(.custom("Sol Schori Bold", size: 20)).padding(10)
                    Text("Until Lives turn 0")
                        .font(.custom("Sol Schori Bold", size: 20)).padding(10)
                    Spacer()
                }
                else{
                    MenuView()
                }
        }
        
        }
    }

struct HowToPlayView_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlayView()
    }
}
