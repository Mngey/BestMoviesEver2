//
//  MusicTableViewController.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 05/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class MusicTableViewController: UITableViewController {
    
    
    var albums = Album.createAlbum()


    
    override func viewDidLoad() {
        super.viewDidLoad()

    
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath)

        let album = albums[indexPath.row]
        cell.textLabel?.text = album.albumName
        cell.detailTextLabel?.text = album.artistName
        cell.imageView?.image = UIImage(named: album.artistName)
                
                return cell
            }
          
            override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                80
            }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
           let alert = UIAlertController(title: "Do you really want to delete?", message: nil, preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
           alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: {(_) in
               self.albums.remove(at: indexPath.row)
               
               UIView.transition(with: tableView, duration: 1.0, options: .transitionCrossDissolve, animations: {self.tableView.reloadData()}, completion: nil)
               //tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
           }))
           self.present(alert, animated: true)
        }
    }
       
       override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

       }
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let indexPath = tableView.indexPathForSelectedRow{
//                let detailVC = segue.destination as! DetailViewController
//                detailVC. = albums[indexPath.row]
//            }
//        
//        }
       

    }



