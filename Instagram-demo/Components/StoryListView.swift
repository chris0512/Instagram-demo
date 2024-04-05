//
//  StoryListView.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/5.
//

import SwiftUI

struct StoryListView: View {
    @ObservedObject var postData = ReadJSONData()
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                AddStoryCard()
                ForEach(postData.posts) { post in
                    StoryCard(image: post.profile_img)
                }
            }
        }
        .offset(x: 15)
    }
}

#Preview {
    StoryListView()
}
