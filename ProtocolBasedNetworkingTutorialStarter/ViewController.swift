//
//  ViewController.swift
//  ProtocolBasedNetworkingTutorialStarter
//
//  Created by James Rochabrun on 12/4/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    ///add the MovieClient property here
    var  moviesClient = MovieClient()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///perform the api call here
        
        
        moviesClient.getFeed(from: .nowPlaying)
        { result in
            
            
            switch result {
            case .success(let movieFeedResult):

                guard let movieResults = movieFeedResult?.results else { return }
                print("movies",movieResults)
            case .falilure(let error):
                print("the error \(error)")
            }
        }

    }


}

