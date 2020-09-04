//
//  MovieListTableViewController.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 03/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {

        var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)

      let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.name)
              
              return cell
          }
        
          override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
              100
          }

   
  
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
        
    }
    

 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == UITableViewCell.EditingStyle.delete {
         movies.remove(at: indexPath.row)
         tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
     }
 }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
 

 
  
    // MARK: - Navigation

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let detailVC = segue.destination as! DetailViewController
            detailVC.movie = movies[indexPath.row]
        }
    
    }
   

}
