//
//  MyWebView.swift
//  h4x0r-news
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import Foundation
import WebKit
import SwiftUI

struct MyWebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
