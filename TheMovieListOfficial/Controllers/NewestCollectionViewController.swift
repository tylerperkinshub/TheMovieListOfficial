//
//  NewestCollectionViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/20/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit
import Parse
import Alamofire

private let reuseIdentifier = "Cell"

class NewestCollectionViewController: UIViewController {

    
     var movieItem: Movie?
    var currentUser = PFUser.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if currentUser == nil {
            performSegue(withIdentifier: "UserSignInSegue", sender: self)
            
        }
        
        MovieSearch.shared.searchMovie { (movie) in
            self.movieItem = movie
        }

        
    }



}
