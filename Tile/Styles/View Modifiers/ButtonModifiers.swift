//
//  ButtonModifiers.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct FindButtonStyle: ButtonStyle {
    func makeBody(configuration: FindButtonStyle.Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 45)
            .padding(.vertical, 10)
            .background(AppColor.green)
            .cornerRadius(20)
            .foregroundColor(Color.white)
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}
