//
//  Album.swift
//  visionProMusicApp
//
//  Created by Camilo Ibarra Y on 12/12/24.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let albums: [Album] = [
    Album(image: "https://upload.wikimedia.org/wikipedia/en/e/ed/Green_Day_-_American_Idiot_album_cover.png", title: "Green Day", subTitle: "American Idiot"),
    Album(image: "https://m.media-amazon.com/images/I/51wfMCS8GwS._SX300_SY300_QL70_ML2_.jpg", title: "Sum 41", subTitle: "Underclass Hero"),
    Album(image: "https://cdn-images.dzcdn.net/images/cover/aa1351a469f541502875eb1f33980789/0x1900-000000-80-0-0.jpg", title: "Blink 182", subTitle: "Blink 182"),
    Album(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7-XT3rnFZTGALYtWga0jKgfuuof6789vWA&s", title: "Linkin Park", subTitle: "Hybrid Theory")
]
