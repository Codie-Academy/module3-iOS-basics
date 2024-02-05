//
//  CustomTableViewCell.swift
//  Module3
//
//  Created by Codie Academy on 2.2.24..
//  Copyright © 2024 Codie Academy. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let nibName = "CustomTableViewCell"
    static let reuseIdentifier = "CustomTableViewCellReuseIdentifier"

    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        // Reset or clear any content or state that might be lingering from the previous use of the cell
        label.text = nil
    }

}
