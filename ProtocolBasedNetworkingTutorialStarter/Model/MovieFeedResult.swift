//

//  Created by Raghavendra Dattawad on 11/29/18.


import Foundation

///the JSON has a key called results and its an array of movies.

struct MovieFeedResult: Decodable {
    let results: [Movie]?
}
