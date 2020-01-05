//
//  AppBarView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
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
    }
}

#if DEBUG
struct AppBarViewPreviews: PreviewProvider {
    static var previews: some View {
        AppBarView().previewLayout(.sizeThatFits)
    }
}
#endif
