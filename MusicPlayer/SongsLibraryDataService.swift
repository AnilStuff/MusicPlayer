//
//  SongsLibraryDataService.swift
//  MusicPlayer
//
//  Created by Anil Kothari on 18/05/17.
//  Copyright © 2017 Anil Kothari. All rights reserved.
//

import Foundation
import UIKit

class SongsLibraryDataService: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var musicManager : MusicManager!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        guard let musicManager = musicManager else { return 0 }
        
        return musicManager.totalSongsCount
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let musicManager = musicManager else { fatalError() }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCellID", for: indexPath) as! MusicCell
        
        let musicFile =  musicManager.getSongAtIndex(index: indexPath.row)
        cell.configMovieCell(withMovie: musicFile)
        return cell
    }
    
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        guard let musicManager = musicManager else { fatalError() }
        
        let musicFile = musicManager.getSongAtIndex(index: indexPath.row)
        
        musicManager.playMusicFile(musicFile)
        
    }
    
 
}
