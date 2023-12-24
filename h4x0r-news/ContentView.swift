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

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts : [Post] = [
Post(id: "1", title: "hello"),
Post(id: "2", title: "hola"),
Post(id: "3", title: "bonjour"),
]
