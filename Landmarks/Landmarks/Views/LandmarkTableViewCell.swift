//
//  LandmarkTableViewCell.swift
//  Landmarks
//
//  Created by Dusan Durakovic on 24.1.24..
//

import UIKit

class LandmarkTableViewCell: UITableViewCell {

    @IBOutlet weak var landmarkPhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let reuseIdentifier = "LandmarkTableViewCellReuseIdentifier"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
