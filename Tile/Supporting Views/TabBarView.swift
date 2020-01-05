//
//  TabBarView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @Binding var viewSelected: Screen

    var body: some View {
        HStack {
            Spacer()
            Button(action: {self.viewSelected = Screen.home}) {
                Image(
                    systemName: viewSelected == Screen.home ?
                        "tag.fill" : "tag"
                )
                .resizable()
                .frame(width: 22, height: 22)
                .rotationEffect(Angle(degrees: 45))
                .foregroundColor(Color.black)
            }
            Spacer()
            Button(action: {self.viewSelected = Screen.map}) {
                Image(
                    systemName: viewSelected == Screen.map ?
                        "map.fill" : "map"
                )
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(Color.black)
            }
            Spacer()
            Button(action: {self.viewSelected = Screen.notifications}) {
                Image(
                    systemName: viewSelected == Screen.notifications ?
                        "envelope.fill" : "envelope"
                )
                .resizable()
                .frame(width: 29, height: 19)
                .foregroundColor(Color.black)
            }
            Spacer()
        }
        .padding(.top, 10)
        .foregroundColor(Color.black)
        .background(Color.white)
    }
}

#if DEBUG
struct TabBarViewPreviews: PreviewProvider {
    static var previews: some View {
        TabBarView(viewSelected: .constant(Screen.home))
            .previewLayout(.sizeThatFits)
    }
}
#endif
