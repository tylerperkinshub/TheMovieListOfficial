//
//  DataManagement.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/27/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import Foundation
import Alamofire

class DataManagement {

    let serverKeys = ServerKeys()
    static let shared = DataManagement()
    private init() {}
    
    func getMovie(completion: () -> Void) {
        let request = Alamofire.request("https://api.themoviedb.org/3/movie/238?api_key=\(serverKeys.movieDBAPIKey)&language=en-US").responseJSON { response in
            
            let data = response.result.value as? [String : Any]
            //print(data)
            
            let movie = Movie(data: data!)
            print("Here is the movie title \(describing: movie?.title)")
        }
    }
    
}
