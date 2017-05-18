//
//  MusicManager.swift
//  MusicPlayer
//
//  Created by Anil Kothari on 18/05/17.
//  Copyright © 2017 Anil Kothari. All rights reserved.
//

import Foundation
import MediaPlayer

class MusicManager{
    
    var totalSongsCount:Int  { return totalSongsList.count }
    
    private var totalSongsList = [MPMediaItem]()
    
    func addSongToLibrary(song: MPMediaItem){
        totalSongsList.append(song)
    }
    
    func getSongAtIndex(index: Int) -> MPMediaItem{
        guard index < totalSongsCount else {fatalError()}
        return totalSongsList[index]
    }
    
    func clearSongsList(){
        totalSongsList.removeAll()
    }
    
    
    func loadSongsFromMusicLibrary(){
        let query = MPMediaQuery.songs()
        if let items = query.items {
             totalSongsList = items
        }
        
        printAllFiles()
    }
    
    
    func printAllFiles(){
        for item in totalSongsList{
            print(item.title)
        }
    }
    
    
    func playMusicFile(_ musicFile : MPMediaItem){
        let url = musicFile.value(forProperty: MPMediaItemPropertyAssetURL)
        
        do {
            let audioPlayer = try AVAudioPlayer(contentsOf: url as! URL)
            audioPlayer.play()
        } catch  {
            
        }
    }
    
}
