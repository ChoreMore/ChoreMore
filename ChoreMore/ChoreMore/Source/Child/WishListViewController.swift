//
//  WishListViewController.swift
//  ChoreMore
//
//  Created by James Litjens on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class WishListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  var wishList: [(name: String, value: Float, image: String)]?
    
  @IBOutlet weak var wishListTableView: UITableView!
  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    self.wishList = [("Playstation", 200.00, "playstation"), ("Visit Luna Park", 50.00, "luna")]
    tableView.tableFooterView = UIView()
  }

  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let count = self.wishList?.count else { return 0 }
    
    return count
  }

  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let wishListCell = tableView.dequeueReusableCell(withIdentifier: "wishListCell") as! WishlistTableViewCell
    
    guard let wishListItem = self.wishList?[indexPath.item] else { return UITableViewCell() }

    wishListCell.itemImage.image = UIImage(named: wishListItem.image)
    wishListCell.itemNameLabel.text = wishListItem.name
    wishListCell.itemCostLabel.text = String(format: "$ %.2f", wishListItem.value)
    wishListCell.goalSlider.value = wishListItem.value < 120 ? 1 : (120 / wishListItem.value)
    
    return wishListCell
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
    
  @IBAction func unwindToWishList(segue: UIStoryboardSegue) {

  }

}
