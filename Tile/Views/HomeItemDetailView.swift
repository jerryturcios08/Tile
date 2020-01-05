//
//  HomeItemDetailView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct HomeItemDetailView: View {
    @Binding var isNavigationBarHidden: Bool
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    func viewDidLoad() {
        isNavigationBarHidden = false
    }

    var body: some View {
            VStack {
                Text("Detail")
            }
            .navigationBarHidden(isNavigationBarHidden)
            .navigationBarItems(leading: Button(
                action: {self.mode.wrappedValue.dismiss()}
            ) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
                    .font(Font.title.weight(.regular))
            })
            .navigationBarTitle("My Keys", displayMode: .inline)
            .onAppear(perform: viewDidLoad)
    }
}

#if DEBUG
struct HomeItemDetailViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeItemDetailView(isNavigationBarHidden: .constant(true))
    }
}
#endif
