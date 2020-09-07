//
//  InfoViewController.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 07/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var infoLabelText: UILabel!
    let infoText = "This application was made as part of a SGT Low Code hometask."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabelText.text = infoText
        infoLabelText.numberOfLines = 0
        infoImageView.image = UIImage(named: "2")
        infoImageView.layer.cornerRadius = 15
    }
    
//    moviePosterView.image = UIImage(named: movie.name)
//              movieYearLabel.text = movie.year
//                  
//              movieNameLabel.text =  movie.name
//              movieDirectorLabel.text = "by " + movie.director
//               movieNameLabel.numberOfLines = 0
//           }
//    myLabel.layer.cornerRadius = 10
//    myLabel.layer.borderWidth = 2
//    myLabel.layer.borderColor = UIColor.black.cgColor
//    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
