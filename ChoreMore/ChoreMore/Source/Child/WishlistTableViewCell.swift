//
//  WishlistTableViewCell.swift
//  ChoreMore
//
//  Created by James Litjens on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import UIKit

class WishlistTableViewCell: UITableViewCell {

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemCostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
