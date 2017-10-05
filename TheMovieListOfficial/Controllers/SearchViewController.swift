//
//  SearchViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/20/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    var movieItem: Movie?
    //var movieSearch = MovieSearch()
    
    
    @IBOutlet weak var movieSearchTextField: UITextField!
    @IBOutlet weak var searchedMovieTitle: UILabel!
    @IBOutlet weak var searchedMovieYear: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Here is the title \(movieItem?.title)")

        searchedMovieTitle.text = movieItem?.title
        searchedMovieYear.text = movieItem?.year
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
