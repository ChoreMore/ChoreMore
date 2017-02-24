//
//  ChoreTableViewCell.swift
//  ChoreMore
//
//  Created by James Litjens on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import UIKit

class ChoreTableViewCell: UITableViewCell {

    @IBOutlet weak var choreNameLabel: UILabel!
    @IBOutlet weak var choreChildNameLabel: UILabel!
    @IBOutlet weak var choreValueLabel: UILabel!
    @IBOutlet weak var choreStatusLabel: UILabel!
    @IBOutlet weak var choreActionButton: UIButton!
    
    @IBAction func didTapChoreActionButton(_ sender: Any) {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
