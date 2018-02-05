//
//  NetworkManager.swift
//  CoinsquareTech
//
//  Created by Victor Hong on 03/02/2018.
//  Copyright © 2018 Victor Hong. All rights reserved.
//

import Foundation

class NetworkManager {
    private let url = "https://www.reddit.com/.json"
    func getRequest(completion: @escaping (_ redditChildrenModel: [RedditChildrenModel]) -> ()) {
        let reddit = Resource<RedditModel>(method: .get, url: URL(string: url)!)
        Networking().load(resource: reddit) { (redditModel, _, error) in
            if (error == nil) {
                guard let redditModel = redditModel else { return }
                var redditChildrenModel = [RedditChildrenModel]()
                for children in redditModel.data.children {
                    redditChildrenModel.append(children)
                }
                DispatchQueue.main.async {
                    completion(redditChildrenModel)
                }
            }
        }
    }
    
}
