//
//  Movie.swift
//  TheMovieListOfficial
//
//  Created by Tyler Perkins on 9/27/17.
//  Copyright © 2017 Tyler Perkins. All rights reserved.
//

import Foundation

struct Movie {
    
    private let kPosterImage = "poster_path"
    private let kTitle = "original_title"
    private let kYear = "release_date"
    private let kRuntime = "runtime"
    private let kTagline = "tagline"
    private let kOverview = "overview"
    
    public let posterImage: String?
    public let title: String?
    public let year: String?
    public let runtime: Int?
    public let tagline: String?
    public let overview: String?
    
    init?(data: [String : Any]) {
        guard let posterImage = data[kPosterImage] as? String,
            let title = data[kTitle] as? String,
            let year = data[kYear] as? String,
            let runtime = data[kRuntime] as? Int,
            let tagline = data[kTagline] as? String,
            let overview = data[kOverview] as? String
            else { return nil }
        
        self.posterImage = posterImage
        self.title = title
        self.year = year
        self.runtime = runtime
        self.tagline = tagline
        self.overview = overview
    }
}
