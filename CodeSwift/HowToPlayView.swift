//
//  HowToPlayView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct HowToPlayView: View {
    @State private var isPressed = false
    @State private var currentPage = Page.Guide
    var body: some View {
        VStack{ // view explain mechanics
                if currentPage == .Guide{
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

struct HowToPlayView_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlayView()
    }
}
