//
//  HomeItemView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct HomeItemView: View {
//    let itemImage: TileItem

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(AppColor.darkGray)
                }
            }
            Group {
                Image("KeyTile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.top, 15)
                Text("My Keys")
                    .fontWeight(.bold)
                // Add if shared logic
            }
            Spacer()
            Button(action: {}) {
                Text("Find")
                    .fontWeight(.bold)
            }.buttonStyle(FindButtonStyle())
        }
        .padding()
        .padding(.bottom, 5)
        .background(Color.white)
        .frame(width: 180, height: 280)
        .cornerRadius(5)
        .shadow(color: AppColor.navBorder, radius: 5, x: 0, y: 3)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1.5)
                .foregroundColor(AppColor.navBorder)
        )
    }
}

#if DEBUG
struct HomeItemViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeItemView()
                .previewDisplayName("Home item with light mode")
                .previewLayout(.sizeThatFits)
                .padding()
            HomeItemView()
                .previewDisplayName("Home item with dark mode")
                .previewLayout(.sizeThatFits)
                .environment(\.colorScheme, .dark)
                .padding()
        }
    }
}
#endif
