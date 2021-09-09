//
//  PostData.swift
//  H4X0R News
//
//  Created by thinh on 11/18/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import Foundation

struct Result : Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id:String {
        get {
            return objectID
        }
    }
    var title: String
    var points: Int
    var author: String
    var created_at: String
    var url: String
    var objectID: String
}
