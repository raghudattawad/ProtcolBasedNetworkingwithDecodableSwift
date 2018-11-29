//
//  MoviesClient.swift
//  ProtocolBasedNetworkingTutorialStarter
//
//  Created by Raghavendra Dattawad on 11/29/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

class MovieClient: APIClient {
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    //in the signature of the function in the success case we define the Class type thats is the generic one in the API
    func getFeed(from movieFeedType: MovieFeed, completion: @escaping (Result<MovieFeedResult?, APIError>) -> Void) {
        fetch(with: movieFeedType.request , decode: { json -> MovieFeedResult? in
            guard let movieFeedResult = json as? MovieFeedResult else { return  nil }
            return movieFeedResult
        }, completion: completion)
    }
    
    
}
