//
//  MusicFile.swift
//  MusicPlayer
//
//  Created by Anil Kothari on 18/05/17.
//  Copyright © 2017 Anil Kothari. All rights reserved.
//

import Foundation

public enum SerializationError: Error {
    case missing(String)
}

struct MusicFile {
    var genre : String?
    var id : String?
    var title : String?
    var album : String?
    var rating : Int?
    var artist : String?
    
    
   
}
extension MusicFile{
    
    init?(json: [String: Any]){
        
        if let music_id = json["id"] as? String {
            id = music_id;
        }
        
        if let music_genre = json["genre"] as? String {
            genre = music_genre;
        }
        
        if let music_title = json["title"] as? String {
            title = music_title;
        }
        
        if let music_album = json["album"] as? String {
            album = music_album;
        }
        if let music_rating = json["rating"] as? Int {
            rating = music_rating;
        }
        
        if let music_artist = json["artist"] as? String {
            artist = music_artist;
        }
        
        
    }
    
}
