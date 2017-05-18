//
//  MusicCell.swift
//  MusicPlayer
//
//  Created by Anil Kothari on 18/05/17.
//  Copyright © 2017 Anil Kothari. All rights reserved.
//

import Foundation
import MediaPlayer

import UIKit

class MusicCell: UITableViewCell {
    
    func configMovieCell(withMovie: MPMediaItem) {
        self.textLabel?.text = withMovie.title
        self.detailTextLabel?.text = withMovie.albumTitle
    }
    
}
