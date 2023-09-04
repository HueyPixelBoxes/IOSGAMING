//
//  Intro&DifficultyView.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

// need model View
struct Intro_DifficultyView: View {
    var body: some View {
        // choose difficulties
        @StateObject private var GameViewModel = GameViewModel()
        
    }
}

struct Intro_DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        Intro_DifficultyView().environmentObject(MenuManager())
    }
}
