//
//  HomeView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct HomeView: View {
//    let itemList: [TileItem]

    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "plus.app")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(AppColor.darkGray)
                }
                Spacer()
                Image("TileLogo")
                    .resizable()
                    .frame(width: 90, height: 90)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(AppColor.darkGray)
                }
            }.padding(.horizontal, 30)
            // TODO: Add logic to rendering the items
            VStack {
                HStack {
                    HomeItemView().padding(.horizontal, 8)
                    HomeItemView().padding(.horizontal, 8)
                }
                HStack {
                    HomeItemView().padding(.horizontal, 8)
                    HomeItemView().padding(.horizontal, 8)
                }
            }
            Spacer()
        }
    }
}

#if DEBUG
struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
