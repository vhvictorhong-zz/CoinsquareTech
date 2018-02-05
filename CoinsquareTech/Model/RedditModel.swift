//
//  RedditModel.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

struct RedditModel: Decodable {
    var kind: String
    var data: RedditData
}
