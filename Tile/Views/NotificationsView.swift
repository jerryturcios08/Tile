//
//  NotificationsView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct NotificationsView: View {
    @State private var notifications = [String]()

    var body: some View {
        VStack {
            AppBarView()
            if notifications.count == 0 {
                Spacer()
                Text("No new notifications").padding(.bottom, 100)
                Spacer()
            } else {
                Text("YEAHHHHHH")
            }
        }
    }
}

#if DEBUG
struct NotificationsViewPreviews: PreviewProvider {
    static var previews: some View {
        ZStack {
            NotificationsView()
            VStack {
                Spacer()
                VStack {
                    HorizontalLine(color: AppColor.navBorder, height: 2)
                    TabBarView(viewSelected: .constant(.notifications))
                }.background(Color.white)
            }
        }
    }
}
#endif
