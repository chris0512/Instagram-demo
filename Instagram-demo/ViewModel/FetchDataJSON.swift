//
//  FetchDataJSON.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/4.
//

import Foundation

struct Post: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case image
        case like_count
        case comment_count
        case view_count
        case description
        case profile_img
        case profile_name
        case profile_id
    }
    
    var id = UUID()
    var image: String
    var like_count: Int
    var comment_count: Int
    var view_count: Int
    var description : String
    var profile_img: String
    var profile_name: String
    var profile_id: String
}

class ReadJSONData: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "posts", withExtension: "json") else {
            print("Json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let posts = try? JSONDecoder().decode([Post].self, from: data!)
        
        self.posts = posts!
    }
}
