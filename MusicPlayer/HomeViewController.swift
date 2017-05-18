//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Anil Kothari on 18/05/17.
//  Copyright © 2017 Anil Kothari. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var songsTableView: UITableView!
    @IBOutlet var dataService : SongsLibraryDataService!
    var musicManager  = MusicManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        songsTableView.dataSource = dataService
        songsTableView.delegate = dataService
        
        musicManager.loadSongsFromMusicLibrary()
        
        dataService.musicManager = musicManager
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
