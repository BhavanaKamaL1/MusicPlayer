//
//  TableViewCell1.swift
//  MusicPlayer
//
//  Created by DDUKK on 01/11/22.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
