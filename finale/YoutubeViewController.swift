//
//  YoutubeViewController.swift
//  finale
//
//  Created by User10 on 2019/6/22.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift
class YoutubeViewController: UIViewController {
    var id:String?
    var num:Int?
    @IBOutlet weak var videoview: YouTubePlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title=ytmvname[num!]
       videoview.loadVideoID(id!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func videoplay(_ sender: Any) {
        videoview.play()
    }
    
    @IBAction func videopause(_ sender: Any) {
        videoview.pause()
    }
    @IBAction func videostop(_ sender: Any) {
        videoview.stop()
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
