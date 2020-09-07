//
//  Movie.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 03/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import Foundation

struct Movie {
    let year:String
    let name:String
    let director:String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let years = DataManager.shared.year
        let names = DataManager.shared.name
        let directors = DataManager.shared.director
        
        for index in 0..<years.count {
            let movie = Movie(year: years[index], name: names[index], director: directors[index])
            movies.append(movie)
        }
        
        return movies
    }
}

