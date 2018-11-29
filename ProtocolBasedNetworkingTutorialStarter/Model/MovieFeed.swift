//
//  MovieFeed.swift
//  ProtocolBasedNetworkingTutorialStarter
//
//  Created by Raghavendra Dattawad on 11/29/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

enum MovieFeed{
    
    
    case nowPlaying
    case topRated
}
extension  MovieFeed:EndPoint{
    var base: String {
    return "https://api.themoviedb.org"
    
    }
    
    var path: String {
        
        switch self {
        case .nowPlaying: return "/3/movie/now_playing"
        case .topRated: return "/3/movie/top_rated"
            
        }
    }
}
