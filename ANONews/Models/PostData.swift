//
//  PostData.swift
//  ANONews
//
//  Created by Fernando dos Santos Motta on 25/07/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Posts]
}

struct Posts: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
