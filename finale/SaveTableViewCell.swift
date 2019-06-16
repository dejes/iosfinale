//
//  SaveTableViewCell.swift
//  finale
//
//  Created by User18 on 2019/6/16.
//  Copyright © 2019 jackliu. All rights reserved.
//

import UIKit

class SaveTableViewCell: UITableViewCell {

    @IBOutlet weak var SaveTrackImage: UIImageView!
    @IBOutlet weak var SaveTrackName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
