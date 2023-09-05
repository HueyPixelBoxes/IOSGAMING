//
//  SettingView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 05/09/2023.
//

import SwiftUI

struct SettingView: View {
    @State private var isPressed = false
    var body: some View {
        VStack{
            if !isPressed {
                Text("Choose Difficulties").font(.custom("Sol Schori Bold", size: 40))
                    .multilineTextAlignment(.center)
                Button{
                    isPressed = true
                }label:{
                        Text("Embark").font(.custom("Sol Schori Bold", size: 30))
                        .padding(10)
                }.buttonStyle(.plain)
            }
            else
            {
                GameView()
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
