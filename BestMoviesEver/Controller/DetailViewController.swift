//
//  DetailViewController.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 03/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieYearLabel: UILabel!
     @IBOutlet weak var moviePosterView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    var movie: Movie!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         if movie != nil {
             moviePosterView.image = UIImage(named: movie.name)
            movieYearLabel.text = movie.year
                
            movieNameLabel.text =  movie.name
            movieDirectorLabel.text = "by " + movie.director
             movieNameLabel.numberOfLines = 0
         }
       
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
