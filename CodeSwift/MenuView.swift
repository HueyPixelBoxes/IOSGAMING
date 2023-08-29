//
//  MenuView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct MenuView: View {
    @State private var IsPressed = false
    var body: some View {
        VStack{
            Text("ROLL OR DIE").font(.custom("Sol Schori Bold", size: 20))
            Button(){
            }label: {
                Text("Button").font(.custom("Sol Schori Bold", size: 20))
            }.buttonStyle(ButtonStyleMenu())
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().foregroundColor(.black)
    }
}
