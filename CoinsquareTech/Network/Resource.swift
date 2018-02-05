//
//  Resource.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

struct Resource<A> where A: Decodable {
    let method: HttpMethod<Data>
    let url: URL
    let parse: (Data) -> A? = { data in return try? JSONDecoder().decode(A.self, from: data) }
}

extension Resource {
    init<T>(method: HttpMethod<T>, url: URL) where T: Encodable {
        self.method = method.map { json in try! JSONEncoder().encode(json) }
        self.url = url
    }
}
