//
//  DeathView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct DeathView: View {
    @EnvironmentObject var MenuNav : MenuManager 
    @State isPressed = false
    var body: some View {
        VStack{
            Image("death.png").animation(.interpolatingSpring(stiffness: 50, damping: 1), true) // death image
            Text("YOU ARE DEAD").font(.custom("Sol Schori Bold", size: 40))
            // go to menu, save game
            ZStack{
                Image(isPressed ? "blankpressed" : "blankunpressed") // use blank_image.png for press and unpress
                Text("TO THE MENU").font(.custom("Sol Schori Bold", size: 20))
                }.resizable().overlay(
                GeometryReader {geometry in Button (action: {}, label : {
                    Text("")
                        .frame(width: geometry.width, height: geometry.height)
                        .contentShape(Rectangle())
                    }).buttonStyle(.plain)
                .pressAction{
                    isPressed = true
                    MenuNav.page = .theme
                }}).frame (width: 100, height: 40)
            // try again save game
            ZStack{
                Image(isPressed ? "blankpressed" : "blankunpressed") // use blank_image.png for press and unpress
                Text("TRY AGAIN").font(.custom("Sol Schori Bold", size: 20))
                }.resizable().overlay(
                GeometryReader {geometry in Button (action: {}, label : {
                    Text("")
                        .frame(width: geometry.width, height: geometry.height)
                        .contentShape(Rectangle())
                    }).buttonStyle(.plain)
                .pressAction{
                    isPressed = true
                    MenuNav.page = .game
                }}).frame (width: 100, height: 40)
                
        }
    }
}

struct DeathView_Previews: PreviewProvider {
    static var previews: some View {
        DeathView().environmentObject(MenuManager)
    }
}
