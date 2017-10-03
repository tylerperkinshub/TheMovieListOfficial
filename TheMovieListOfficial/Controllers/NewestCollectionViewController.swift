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

    var currentUser = PFUser.current()
    
    let movieSearch = MovieSearch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if currentUser == nil {
            performSegue(withIdentifier: "UserSignInSegue", sender: self)
            
        }
        
        movieSearch.searchMovie() {
        }
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes

        // Do any additional setup after loading the view.
    }



}
