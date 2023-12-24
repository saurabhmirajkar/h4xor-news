//
//  DetailView.swift
//  h4x0r-news
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI


struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        MyWebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}



