//
//  TileItem.swift
//  Tile
//
//  Created by Jerry Turcios on 1/5/20.
//  Copyright © 2020 Jerry Turcios. All rights reserved.
//

import Foundation

struct TileItem: Decodable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var shared = false
    var lastLocation: String?
    var lastFound: String?

    init(name: String, image: String) {
        self.name = name
        self.image = image
        self.lastLocation = nil
        self.lastFound = nil
    }
}

#if DEBUG
let tileItemData = [
    TileItem(name: "My Keys", image: "KeyTile"),
    TileItem(name: "My Remote", image: "RokuStick"),
    TileItem(name: "My Wallet", image: "BigTexasWallet"),
    TileItem(name: "My Backpack", image: "TileBag")
]
#endif
