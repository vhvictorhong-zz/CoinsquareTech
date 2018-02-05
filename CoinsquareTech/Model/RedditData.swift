//
//  RedditData.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

struct RedditData: Decodable {
    var after: String
    var dist: Int
    var modhash: String
    var whitelistStatus: String
    var children: [RedditChildrenModel]
}

extension RedditData {
    enum CodingKeys: String, CodingKey {
        case after
        case dist
        case modhash
        case whitelistStatus = "whitelist_status"
        case children
    }
}
