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
    
    var im = [URL]()
    @IBOutlet var chibiimg: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let hyperlink="http://schoolido.lu/api/idols/"
        self.title=generation
        
        if let generation=generation{
            if generation==gener[0]{
                var i = 0
                //var r=0
                for label in charactername {
                    label.text = musecharacter[i]
                    /*print(i)
                    if let url=URL(string: hyperlink + musecharacterapi[i]+"/"){
                        print(url)
                        
                        let task=URLSession.shared.dataTask(with: url){
                            (data,response,error) in
                            let decoder=JSONDecoder()
                            print(i)

                            if let data=data,let roleDetail=try? decoder.decode(RoleDetail.self, from: data){
                                if let imgdata=try? Data (contentsOf: roleDetail.chibi_small){
                                    DispatchQueue.main.async {
                                        print("r:",r)
                                        print("inmain:",roleDetail.chibi_small)
                                        //self.chibiimg[r].image=UIImage(data:imgdata)
                                        self.tableView.reloadData()
                                        r=r+1
                                    }
                                }
                                else{
                                    print("error")
                                }
                            }
                            else{
                                print("errorin")
                            }
                        }
                        task.resume()
                    }*/
                    print(musecharacter[i])
                    i = i + 1
                }
            }
            else if generation==gener[1]{
                var i=0
                for label in charactername{
                    label.text=aqourscharacter[i]
                    i=i+1
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destinationController=segue.destination as? LLRoleDetailsTableViewController
        if let identifier=segue.identifier,let RoleNameNo=Int(identifier){
            destinationController?.NameNo=RoleNameNo
            destinationController?.generati0n=generation
        }
    }
    

}
