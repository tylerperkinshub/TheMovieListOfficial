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
    
    static let shared = MovieSearch()
    init () {}
    
    func searchMovie(completion: () -> Void) {
        let request = Alamofire.request("https://api.themoviedb.org/3/search/movie?api_key=f691c008b316b96c5f83eae55b299bcb&language=en-US&query=The%20Godfather&page=1&include_adult=false").responseJSON { response in
            
            let data = response.result.value as? [String : Any]
            print(data!)
            
            let movie = Movie(data: data!)
            print("Here is the movie title \(describing: movie?.title)")
        }
    }
    
    
}
