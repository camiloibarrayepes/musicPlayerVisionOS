//
//  SideBarViews.swift
//  visionProMusicApp
//
//  Created by Camilo Ibarra Y on 12/12/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List (sideMenuItems) { item in
            NavigationLink(value: item) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }.navigationDestination(for: SideMenuItem.self) { item in
                
            }
        }.toolbar {
            ToolbarItem(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All music")
                    
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }
        }
    }
}
