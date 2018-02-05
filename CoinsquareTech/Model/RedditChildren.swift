//
//  RedditChildren.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

struct RedditChildren: Decodable {
    var subreddit: String
    var id: String
    var author: String
    var url: String
    var title: String
    var num_comments: Int
}
