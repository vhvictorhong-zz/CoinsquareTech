//
//  HttpMethod.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

enum HttpMethod<Body> {
    case get
}

extension HttpMethod {
    var methodString: String {
        switch self {
        case .get: return "GET"
        }
    }
    func map<B>(f: (Body) -> B) -> HttpMethod<B> where B: Encodable {
        switch self {
        case .get: return .get
        }
    }
}
