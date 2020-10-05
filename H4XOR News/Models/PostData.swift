//
//  PostData.swift
//  H4XOR News
//
//  Created by Cheng Pang on 10/2/20.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let url: String?
    let points: Int
    let title: String
    let objectID: String
    
    
}
