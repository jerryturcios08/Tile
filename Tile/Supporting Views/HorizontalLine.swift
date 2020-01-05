//
//  HorizontalLine.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import SwiftUI

struct HorizontalLineShape: Shape {
    func path(in rect: CGRect) -> Path {
        let fill = CGRect(
            x: 0,
            y: 0,
            width: rect.size.width,
            height: rect.size.height
        )

        var path = Path()
        path.addRoundedRect(in: fill, cornerSize: CGSize(width: 2, height: 2))

        return path
    }
}

struct HorizontalLine: View {
    private var color: Color? = nil
    private var height: CGFloat = 1.0

    init(color: Color, height: CGFloat = 1.0) {
        self.color = color
        self.height = height
    }

    var body: some View {
        HorizontalLineShape()
            .fill(self.color!)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: height,
                maxHeight: height
            )
    }
}

#if DEBUG
struct HorizontalLinePreviews: PreviewProvider {
    static var previews: some View {
        HorizontalLine(color: Color.black)
    }
}
#endif
