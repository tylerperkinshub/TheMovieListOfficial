//
//  SearchViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/20/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    @IBOutlet weak var movieSearchTextField: UITextField!
    @IBOutlet weak var searchedMovieTitle: UILabel!
    @IBOutlet weak var searchedMovieYear: UILabel!
    @IBOutlet weak var searchedDirectorName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
