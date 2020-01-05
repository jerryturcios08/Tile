//
//  MapView.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

struct LocationView: View {
    var body: some View {
        VStack {
            AppBarView()
            MapView().padding(.bottom, 40)
        }
    }
}

#if DEBUG
struct MapViewPreviews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LocationView()
            VStack {
                Spacer()
                VStack {
                    HorizontalLine(color: AppColor.navBorder, height: 2)
                    TabBarView(viewSelected: .constant(.location))
                }.background(Color.white)
            }
        }
    }
}
#endif
