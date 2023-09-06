//
//  SettingView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 05/09/2023.
//

import SwiftUI

struct SettingView: View {
    @StateObject var setting = GameViewModel()
    @State private var isPressed = false
    var body: some View {
        VStack{
            if !isPressed {
                Text("Choose Difficulties").font(.custom("Sol Schori Bold", size: 40))
                    .multilineTextAlignment(.center)
                HStack{
                    Button{
                        setting.settingCreate(settingName: "Childplay")
                        isPressed = true
                    }label:{
                            Text("Childplay").font(.custom("Sol Schori Bold", size: 18))
                            .padding(10)
                    }.buttonStyle(.plain)
                    Button{
                        setting.settingCreate(settingName: "Dime&Dozen")
                        isPressed = true
                    }label:{
                            Text("Dime&Dozen").font(.custom("Sol Schori Bold", size: 18))
                            .padding(10)
                    }.buttonStyle(.plain)
                    Button{
                        setting.settingCreate(settingName: "Gambler")
                        isPressed = true
                    }label:{
                            Text("Gambler").font(.custom("Sol Schori Bold", size: 18))
                            .padding(10)
                    }.buttonStyle(.plain)
                }
            }
            else
            {
                GameView(setting: setting)
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView().environmentObject(GameViewModel())
    }
}
