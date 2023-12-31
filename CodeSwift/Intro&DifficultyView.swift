//
//  Intro&DifficultyView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct DifficultyView: View {
    @State private var isPressed = false
    var body: some View {
        VStack{
            if isPressed {
                Text("Choose Difficulties").font(.custom("Sol Schori Bold", size: 40))
                Button{
                    isPressed = true
                }label:{
                    VStack{
                        Text("Embark").font(.custom("Sol Schori Bold", size: 30))
                    }
                }.buttonStyle(.plain)
            }
            else{
                GameView()
            }
        }
    }
}
struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView()
    }
}
