//
//  ViewController.swift
//  finale
//
//  Created by User18 on 2019/6/12.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    var track=[Tracks]()
    let imagepicker=UIImagePickerController()
    @IBOutlet weak var photoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        if let track=Tracks.readLoversFromFile(){
            self.track=track
            SaveTracks=self.track
            print(SaveTracks)
        }
    }

    @IBAction func ChangeButtonImg(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.sourceType = .photoLibrary
        controller.allowsEditing = true
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as? UIImage
        photoButton.setBackgroundImage(image, for: .normal)
        photoButton.setTitle("", for: .normal)
        dismiss(animated: true, completion: nil)
    }
   
}

