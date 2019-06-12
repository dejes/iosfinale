//
//  LLCharacterTableViewController.swift
//  finale
//
//  Created by User18 on 2019/6/12.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class LLCharacterTableViewController: UITableViewController {
    @IBOutlet var charactername: [UILabel]!
    var generation:String?
    var gener=["μ's","Aqours"]
    var musecharacter = ["Hoshizora Rin","Nikishino Maki","Koizumi Hanayo","Kosaka Honoka","Sonada Umi","Minami Kotori","Eli Ayase","Yazawa Nico","Tojo Nozomi"]
    var aqourscharacter=["Ruby Kurosawa"]
    override func viewDidLoad() {
        super.viewDidLoad()
        if let generation=generation{
            if generation==gener[0]{
                var i = 0
                for label in charactername {
                    label.text = musecharacter[i]
                    print(musecharacter[i])
                    i = i + 1
                }
            }
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
