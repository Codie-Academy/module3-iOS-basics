//
//  LandmarkTableViewCell.swift
//  Landmarks
//
//  Created by Codie Academy on 25.2.24..
//

import UIKit

class LandmarkTableViewCell: UITableViewCell {

    static let reuseIdentifier = "LandmarkTableViewCellReuseIdentifier"

    @IBOutlet weak var landmarkPhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
