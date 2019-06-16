//
//  AlbumDetailsTableViewController.swift
//  finale
//
//  Created by User18 on 2019/6/15.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class AlbumDetailsTableViewController: UITableViewController {
    var song:Songs?
    var track = [Tracks]()
    @IBOutlet weak var SongImage: UIImageView!
    @IBOutlet weak var SongName: UILabel!
    
    @IBOutlet weak var ArtistName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let song=song{
            
            navigationItem.title=song.collectionName
            ArtistName.text=song.artistName
            SongName.text=song.collectionName
            let task = URLSession.shared.dataTask(with: song.artworkUrl100!) { (data, response , error) in
                if let data = data {
                    DispatchQueue.main.async {
                        self.SongImage.image=UIImage(data: data)
                    }
                }
            }
            task.resume()
        }
        if let song=song{
            let hyperlink="https://itunes.apple.com/jp/lookup?id="+String(song.collectionId!)+"&entity=song"
                        if let url = URL(string: hyperlink) {
                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                    print(url)
                    let decoder = JSONDecoder()
                    if let data = data, let trackResults = try? decoder.decode(TrackResults.self, from: data) {
                        print("???")
                        //trackResults.results.remove(at: 0)
                        self.track = trackResults.results
                        self.track.remove(at: 0)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                        
                    }
                }
                task.resume()
            }
            else{
                print("errorRRRRRR")
            }
        }
        //track.remove(at: 0)
       print(track)
            
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return track.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SonginAlbum", for: indexPath) as! AlbumDetailsTableViewCell
        
        // Configure the cell...
        //var tracksss:Tracks?
        //var tmp=indexPath.row
        //for tmp in indexPath.row...track.count{
            let tracksss=track[indexPath.row]
            print(tracksss.wrapperType!)
            if tracksss.wrapperType=="track"{
                print(tracksss.trackName!)
                cell.TrackLabel.text=tracksss.trackName!
                cell.TrackArtistLabel.text = "~" + tracksss.artistName! + "~"
                print("wow so good")
                //break;
            }
            else{
                print("error")
            }
       // }
        
        
        
       
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let row = tableView.indexPathForSelectedRow?.row{
            let controller=segue.destination as? TrackDetailsTableViewController
            controller?.trackD=track[row]
        }
    }
 

}
