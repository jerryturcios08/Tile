//
//  ContentView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

enum Screen {
    case home, map, notifications
}

struct ContentView: View {
    @State private var viewSelected = Screen.home
//    @State private var tileItems = [TileItem]()

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color("BackgroundTop"),
                    Color("BackgroundBottom")
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            // TODO: Add linear gradient if possible
            if viewSelected == Screen.home {
                HomeView()
            } else if viewSelected == Screen.map {
                // Render map view
            } else {
                // Render notifications
            }
            VStack {
                Spacer()
                VStack {
                    HorizontalLine(color: AppColor.navBorder, height: 2)
                    TabBarView(viewSelected: $viewSelected)
                }.background(Color.white)
            }
        }
    }
}

#if DEBUG
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDisplayName("Content view with light mode")
            ContentView()
                .previewDisplayName("Content view with dark mode")
                .environment(\.colorScheme, .dark)
        }
    }
}
#endif
