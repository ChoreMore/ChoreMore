//
//  WishlistTableViewCell.swift
//  ChoreMore
//
//  Created by James Litjens on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import UIKit

class TBSlider: UISlider {
  override func trackRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: 0, y: 0, width: bounds.size.width, height: 20)
  }
}

class WishlistTableViewCell: UITableViewCell {

  @IBOutlet weak var itemNameLabel: UILabel!
  @IBOutlet weak var itemCostLabel: UILabel!
  @IBOutlet weak var itemImage: UIImageView!
  @IBOutlet weak var goalSlider: TBSlider!

  override func awakeFromNib() {
    super.awakeFromNib()

    let image = UIImage(named: "goalThumb")
    goalSlider.setThumbImage(image, for: .normal)
    goalSlider.isUserInteractionEnabled = false
  }

}
