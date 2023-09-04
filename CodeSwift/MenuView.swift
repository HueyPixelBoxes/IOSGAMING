//
//  MenuView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI
import Foundation

struct MenuView: View {
    @EnvironmentObject var MenuNav : MenuManager 
    @State private var isPressed = false
    @State private var isToggle = false
    var body: some View {
        VStack{
            Image("theme.png")
            Text("ROLL FOR DIME").font(.custom("Sol Schori Bold", size: 50))
            ZStack{
                Image(isPressed ? "blankpressed" : "blankunpressed") // use blank_image.png for press and unpress
                Text("Play").font(.custom("Sol Schori Bold", size: 20))
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

            ZStack{
                Image(isPressed ? "blankpressed" : "blankunpressed") // use blank_image.png for press and unpress
                Text("How To Play").font(.custom("Sol Schori Bold", size: 20))
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

            ZStack{
                Image(isPressed ? "blankpressed" : "blankunpressed") // use blank_image.png for press and unpress
                Text("LeaderBoard").font(.custom("Sol Schori Bold", size: 20))
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().environmentObject(MenuManager())
    }
}
