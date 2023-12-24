//
//  ContentView.swift
//  h4x0r-news
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts, rowContent: { post in
                Text(post.title)
            })
            .navigationTitle("H4X0R NEWS")
        }
    }
}

#Preview {
    ContentView()
}

let posts : [Post] = []
