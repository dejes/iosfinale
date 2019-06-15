//
//  AlbumTableViewController.swift
//  finale
//
//  Created by User18 on 2019/6/15.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {
    var song=[Songs]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.tabBarItem.title=="μ's"{
            let hyperlink="https://itunes.apple.com/lookup?id=411582529&entity=album"

            if let url=URL(string:hyperlink){
                let task=URLSession.shared.dataTask(with: url){
                    (data,response,error) in
                    let decoder=JSONDecoder()
                    if let data=data,let songResults=try? decoder.decode(SongResults.self, from: data){
 
                        self.song=songResults.results
                        self.song.remove(at: 0)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                        
                    }
                }
              task.resume()
            }
            
        }
        else if self.tabBarItem.title=="Aqours"{
            let hyperlink="https://itunes.apple.com/lookup?id=1045917820&entity=album"
            
            if let url=URL(string:hyperlink){
                let task=URLSession.shared.dataTask(with: url){
                    (data,response,error) in
                    let decoder=JSONDecoder()
                    if let data=data,let songResults=try? decoder.decode(SongResults.self, from: data){
                        
                        self.song=songResults.results
                        self.song.remove(at: 0)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                        
                    }
                }
                task.resume()
            }
            
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return song.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! AlbumTableViewCell

        // Configure the cell...
        
       // for tmp in indexPath.row...song.count{
            let songsss=song[indexPath.row]
            if songsss.wrapperType=="collection"{
                cell.SongName.text=songsss.collectionName
                cell.ArtistName.text=songsss.artistName
                let task = URLSession.shared.dataTask(with: songsss.artworkUrl100!) { (data, response , error) in
                    if let data = data {
                        DispatchQueue.main.async {
                            cell.SongImage.image = UIImage(data: data)
                        }
           
                    }
                }
                task.resume()
                //break;
            }
        //}
        
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
            let controller=segue.destination as? AlbumDetailsTableViewController
            controller?.song=song[row]
        }
 
    }
}
