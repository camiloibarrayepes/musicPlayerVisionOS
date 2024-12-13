//
//  AlbumsView.swift
//  visionProMusicApp
//
//  Created by Camilo Ibarra Y on 12/12/24.
//

import SwiftUI

struct AlbumsView: View {
    @State private var searchText: String = ""
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView {
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            LazyVGrid(columns: columns, spacing: 24) {
                ForEach(albums) { album in
                    Button(action: {}) {
                        VStack (alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Rectangle()
                                    .foregroundStyle(.tertiary)
                            }.aspectRatio(1, contentMode: .fill)
                                .scaledToFill()
                                .cornerRadius(10)
                            Text(album.title).lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }.hoverEffect()
                    }.buttonStyle(.plain)
                        
                }
            }
        }.padding(.horizontal, 24)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Albums")
                        .font(.largeTitle)
                    Text("48 Songs")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomOrnament) {
                HStack {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                    }
                    Button {} label: {
                        Image(systemName: "pause.fill")
                    }
                    Button {} label: {
                        Image(systemName: "forward.fill")
                    }
                    PlayingSongCardView()
                    Button {} label: {
                        Image(systemName: "quote.bubble")
                    }
                    Button {} label: {
                        Image(systemName: "list.bullet")
                    }
                    Button {} label: {
                        Image(systemName: "speaker.wave.3.fill")
                    }
                }.padding(.vertical, 8)
            }
        }
    }
}

struct PlayingSongCardView: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: albums.first?.image ?? "")) { image in
                image.resizable()
            } placeholder: {
                Rectangle().foregroundStyle(.tertiary)
            }.frame(width: 48, height: 48)
                .cornerRadius(6)
            VStack(alignment: .leading) {
                Text("American Idiot")
                Text("Green Day")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }.frame(width: 160, alignment: .leading)
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
            }.buttonBorderShape(.circle)
        }
        .padding(.all, 8)
        .background(.regularMaterial, in: .rect(cornerRadius: 14))
    }
}
