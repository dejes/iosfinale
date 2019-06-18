//
//  ViewController.swift
//  finale
//
//  Created by User18 on 2019/6/12.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var track=[Tracks]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let track=Tracks.readLoversFromFile(){
            self.track=track
            SaveTracks=self.track
        }
    }


}

