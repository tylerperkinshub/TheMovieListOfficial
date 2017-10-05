//
//  Search.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 10/2/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import Foundation
import Alamofire

class MovieSearch {
    
    let serverKeys = ServerKeys()
    static let shared = MovieSearch()
    init () {}
    
    func searchMovie(completion: @escaping (Movie?) -> Void) {
        _ = Alamofire.request("https://api.themoviedb.org/3/movie/238?api_key=\(serverKeys.movieDBAPIKey)&language=en-US").responseJSON { response in
            
            let data = response.result.value as? [String : Any]
            print(data!)
            
            if let movieData = data {
                //DCS: Assemble your movie object, if its successful, we will get a filled out movie
                //if it fails, we will return nill
                if let movieObj = Movie(data: movieData) {
                    completion(movieObj)
                    print(movieObj)
                } else {
                    completion(nil)
                }
            }
        }
    }
    
    
}
