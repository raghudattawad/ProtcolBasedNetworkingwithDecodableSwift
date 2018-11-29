//
//  Result.swift
//  ProtocolBasedNetworkingTutorialStarter
//
//  Created by Raghavendra Dattawad on 11/29/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation
enum Result<T, U>  where U:Error{
    case success(T)
    case falilure(U)
}
