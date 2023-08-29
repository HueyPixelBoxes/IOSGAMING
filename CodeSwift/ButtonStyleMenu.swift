//
//  ButtonStyleMenu.swift
//  RollORDie
//
//  Created by Huy Pham Quang on 29/08/2023.
//

import SwiftUI

struct ButtonStyleMenu : ButtonStyle
{
    func makeBody(configuration: Configuration) -> some View
    {
        
        return configuration
            .label
            .background(.black)
            .clipShape(Rectangle())
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}
