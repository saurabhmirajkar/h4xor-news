//
//  PostModel.swift
//  h4x0r-news
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import Foundation

class Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
