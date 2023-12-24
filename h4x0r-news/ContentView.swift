//
//  ContentView.swift
//  h4x0r-news
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
