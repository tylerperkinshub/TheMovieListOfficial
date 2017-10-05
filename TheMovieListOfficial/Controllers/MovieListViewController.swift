//
//  MovieListViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/20/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit

class MovieListViewController: UITableViewController {

    
    @IBOutlet weak var listName: UILabel!
    @IBOutlet weak var listDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editListPressed(_ sender: Any) {
    }
    
    @IBAction func addMoviePressed(_ sender: Any) {
    }
    
}
