//
//  SideMenuItems.swift
//  visionProMusicApp
//
//  Created by Camilo Ibarra Y on 12/12/24.
//

import Foundation

struct SideMenuItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var icon: String
}

let sideMenuItems: [SideMenuItem] = [
    SideMenuItem(name: "Recently Added", icon: "clock"),
    SideMenuItem(name: "Artists", icon: "music.mic"),
    SideMenuItem(name: "Albums", icon: "square.stack"),
    SideMenuItem(name: "Songs", icon: "music.note"),
    SideMenuItem(name: "Made for You", icon: "person.crop.square")
]
