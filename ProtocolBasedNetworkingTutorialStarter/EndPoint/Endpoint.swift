//
//  Endpoint.swift
//  ProtocolBasedNetworkingTutorialStarter
//
//  Created by Raghavendra Dattawad on 11/29/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation


protocol EndPoint {
    
    var base:String{get}
    var path:String{get}
}
extension EndPoint{
    
    
    var apiKey:String {
        
        return "api_key=34a92f7d77a168fdcd9a46ee1863edf1"
    }


    var urlComponents:URLComponents{
        
        var components = URLComponents(string: base)!
        components.path = path
        components.query = apiKey
        return components
    }


    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}
