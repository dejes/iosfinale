//
//  TrackDetailsTableViewController.swift
//  finale
//
//  Created by User18 on 2019/6/16.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit
import AVKit

class TrackDetailsTableViewController: UITableViewController {
    var trackD:Tracks?
    var player:AVPlayer?
    @IBOutlet weak var TrackName: UILabel!
    @IBOutlet weak var TrackArtist: UILabel!
    @IBOutlet weak var TrackImage: UIImageView!
    
    @IBOutlet var DetailsLabel: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let trackD=trackD{
            navigationItem.title=trackD.trackName
            TrackName.text=trackD.trackName
            TrackArtist.text=trackD.artistName
            let task = URLSession.shared.dataTask(with: trackD.artworkUrl100!) { (data, response , error) in
                if let data = data {
                    DispatchQueue.main.async {
                        self.TrackImage.image=UIImage(data: data)
                        self.DetailsLabel[0].text="releaseDate: " + trackD.releaseDate!
                        self.DetailsLabel[1].text="Price: "+String(trackD.trackPrice!)+" "+trackD.currency!
                    }
                }
            }
            task.resume()
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

   /* override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    
    /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackDetails", for: indexPath) as! TrackDetailsTableViewCell

        // Configure the cell...
        cell.TrackDetailsLabel.text=
        return cell
    }*/
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    @IBAction func playmusic(_ sender: Any) {
        if let url = trackD?.previewUrl {
            player = AVPlayer(url: url)
            print(url)
            player?.play()
            
        }
    }
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
