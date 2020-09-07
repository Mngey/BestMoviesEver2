//
//  Music.swift
//  BestMoviesEver
//
//  Created by a.a.mitrofanova on 05/09/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import Foundation

struct Album {
    let albumName:String
    let artistName:String
   
    static func createAlbum() -> [Album]{
        var albums: [Album] = []
        
        let albumNames = DataManager.shared.albumName
        let artistNames = DataManager.shared.artistName
       
        
        for index in 0..<albumNames.count {
            let album = Album(albumName: albumNames[index], artistName: artistNames[index])
            albums.append(album)
        }
        
        return albums
    }
}
