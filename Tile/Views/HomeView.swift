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

    @State private var isNavigationBarHidden = true

    var body: some View {
        NavigationView {
            VStack {
                AppBarView()
                // TODO: Add logic to rendering the items
                VStack {
                    HStack {
                        NavigationLink(
                            destination: HomeItemDetailView(
                                isNavigationBarHidden: $isNavigationBarHidden
                            )
                        ) {
                            HomeItemView().padding(.horizontal, 8)
                        }.buttonStyle(PlainButtonStyle())
                        HomeItemView().padding(.horizontal, 8)
                    }
                    HStack {
                        HomeItemView().padding(.horizontal, 8)
                        HomeItemView().padding(.horizontal, 8)
                    }
                }
                Spacer()
            }
            .navigationBarHidden(isNavigationBarHidden)
            .navigationBarTitle("")
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
