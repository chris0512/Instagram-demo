//
//  AddStoryCard.swift
//  Instagram-demo
//
//  Created by Chris on 2024/4/5.
//

import SwiftUI

struct AddStoryCard: View {
    var body: some View {
        VStack {
            Image(systemName: "plus.circle")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color.blue)
                .clipShape(Circle())
        }
    }
}

#Preview {
    AddStoryCard()
}
