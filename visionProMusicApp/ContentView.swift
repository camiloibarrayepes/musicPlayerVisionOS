//
//  ContentView.swift
//  visionProMusicApp
//
//  Created by Camilo Ibarra Y on 12/12/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                SideBarView()
            } detail: {
                AlbumsView()
            }.tabItem {
                Label("Browse", systemImage: "music.note")
            }.tag(0)
            
            Text("Favorite")
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }.tag(1)
            Text("PlayList")
                .tabItem {
                    Label("PlayList", systemImage: "play.square.stack")
                }.tag(2)
        }
    }
}

#Preview(windowStyle: .automatic) {
    NavigationStack {
        ContentView()
    }
}

