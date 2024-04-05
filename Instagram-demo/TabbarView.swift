//
//  TabbarView.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/5.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                }
            
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("New Post")
                .tabItem {
                    Image(systemName: "square.and.pencil")
                }

            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.blue)
    }
}

#Preview {
    TabbarView()
}
