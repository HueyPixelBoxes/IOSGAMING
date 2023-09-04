//
//  HowToPlayView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct HowToPlayView: View {
    @EnvironmentObject var  MenuNav: MenuManager
    @State private var isPressed = false
    var body: some View {
        ScrollView{
            VStack{ // view explain mechanics
                Text()
                Image("")
                Text()
                Image("")
                Text()
                Image("")

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
            }
            
        }
    }
}

struct HowToPlayView_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlayView().environmentObject(MenuManager())
    }
}
