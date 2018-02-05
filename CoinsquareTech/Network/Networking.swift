//
//  Networking.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

extension URLRequest {
    init<A>(resource: Resource<A>) {
        self.init(url: resource.url)
        httpMethod = resource.method.methodString
    }
}

class Networking {
    func load<A>(resource: Resource<A>, completion: @escaping (A?, URLRequest?, Error?) -> ()) {
        let request = URLRequest(resource: resource)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, request, error)
                return
            }
            completion(data.flatMap(resource.parse), request, nil)
            }.resume()
    }
}
