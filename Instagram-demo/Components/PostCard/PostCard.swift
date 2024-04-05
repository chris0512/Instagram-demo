//
//  PostCard.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/5.
//

import SwiftUI

struct PostCard: View {
    
    let profile_img: String
    let profile_name: String
    let profile_id: String
    
    let image: String
    let like_count: Int
    let comment_count: Int
    let view_count: Int
    let description: String

    var body: some View {
        VStack {
            PostCardHeader(profile_img: profile_img, profile_name: profile_name, profile_id: profile_id)
            PostCardBody(image: image, like_count: like_count, comment_count: comment_count, view_count: view_count, description: description)
        }
        
    }
}

//#Preview {
//    PostCard()
//}
