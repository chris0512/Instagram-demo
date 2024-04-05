//
//  HomeView.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/4.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StoryListView()
                PostListView()
            }
            .navigationTitle("Instagram")
            .navigationBarItems(trailing: Image(systemName: "bell.badge.fill"))
        }
    }
}

#Preview {
    HomeView()
}
