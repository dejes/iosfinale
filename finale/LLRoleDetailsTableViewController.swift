//
//  LLRoleDetailsTableViewController.swift
//  finale
//
//  Created by User23 on 2019/6/13.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class LLRoleDetailsTableViewController: UITableViewController {
    var NameNo:Int?
    var generati0n:String?
    var japaneseName:String?
    @IBOutlet weak var jp_name_label: UILabel!
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var age_label: UILabel!
    @IBOutlet weak var birthday_label: UILabel!
    @IBOutlet weak var unit_label: UILabel!
    @IBOutlet weak var subunit_label: UILabel!
    @IBOutlet weak var height_label: UILabel!
    @IBOutlet weak var cv_label: UILabel!
    @IBOutlet weak var year_label: UILabel!
    @IBOutlet weak var Chibi_img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hyperlink="http://schoolido.lu/api/idols/"
        if generati0n==gener[0]{
            if let url=URL(string: hyperlink + musecharacterapi[NameNo!]+"/"){
                print(url)
                self.title=musecharacter[NameNo!]
                let task=URLSession.shared.dataTask(with: url){
                    (data,response,error) in
                    let decoder=JSONDecoder()
                    if let data=data,let roleDetail=try? decoder.decode(RoleDetail.self, from: data){
                        if let imgdata=try? Data (contentsOf: roleDetail.chibi){
                            DispatchQueue.main.async {
                                self.Chibi_img.image=UIImage(data: imgdata)
                                self.jp_name_label.text = roleDetail.japanese_name
                                self.name_label.text="Name: "+roleDetail.name
                                self.age_label.text="Age: "+String(roleDetail.age)
                                self.birthday_label.text="Birthday: "+roleDetail.birthday
                                self.unit_label.text="Unit: "+roleDetail.main_unit
                                self.subunit_label.text="Sub Unit: "+roleDetail.sub_unit
                                self.height_label.text="Height: "+String(roleDetail.height)+" cm"
                                self.cv_label.text="CV: "+roleDetail.cv.name
                                self.year_label.text="Grade:"+roleDetail.year+" grade"
                                self.tableView.reloadData()
                            }
                        }
                        
                    }
                }
                task.resume()
            }
        }
        
        else if generati0n==gener[1] {
            if let url=URL(string: hyperlink + aqourscharacterapi[NameNo!]+"/"){
                self.title=aqourscharacter[NameNo!]
                print(url)
                let task=URLSession.shared.dataTask(with: url){
                    (data,response,error) in
                    let decoder=JSONDecoder()
                    if let data=data,let roleDetail=try? decoder.decode(AqoursRoleDetail.self, from: data){
                        if let imgdata=try? Data (contentsOf: roleDetail.chibi){
                            DispatchQueue.main.async {
                                self.Chibi_img.image=UIImage(data: imgdata)
                                self.jp_name_label.text = roleDetail.japanese_name
                                self.name_label.text="Name: "+roleDetail.name
                                self.age_label.text="measurements: "+String(roleDetail.measurements)
                                self.birthday_label.text="Birthday: "+roleDetail.birthday
                                self.unit_label.text="Unit: "+roleDetail.main_unit
                                self.subunit_label.text="Sub Unit: "+roleDetail.sub_unit
                                self.height_label.text="Height: "+String(roleDetail.height)+" cm"
                                self.cv_label.text="CV: "+roleDetail.cv.name
                                self.year_label.text="Grade:"+roleDetail.year+" grade"
                                self.tableView.reloadData()
                            }
                        }
                    }
                    else{
                        print("errorin")
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
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

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
