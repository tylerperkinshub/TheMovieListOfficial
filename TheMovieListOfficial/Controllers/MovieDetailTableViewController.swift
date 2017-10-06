//
//  MovieDetailTableViewController.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/20/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import UIKit

class MovieDetailTableViewController: UITableViewController {

    @IBOutlet weak var movieBannerImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDirector: UILabel!
    @IBOutlet weak var movieRuntime: UILabel!
    @IBOutlet weak var movieLogline: UILabel!
    @IBOutlet weak var movieOverview: UILabel!
    
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var characterName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    @IBAction func trailerPressed(_ sender: Any) {
        
    }
    
    @IBAction func castCrewPressed(_ sender: Any) {
        
    }
    

}
