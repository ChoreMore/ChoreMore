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

    var wishList: [String]?
    
    @IBOutlet weak var wishListTableView: UITableView!
    
    override func viewDidLoad() {
        self.wishList = ["Playstation", "Visit Luna Park"]
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.wishList?.count else {
            return 0
        }
        
        return count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let wishListCell = tableView.dequeueReusableCell(withIdentifier: "wishListCell") as! WishlistTableViewCell
        
        guard let wishListItem = self.wishList?[indexPath.item] else {
            return UITableViewCell()
        }
        
        wishListCell.itemNameLabel.text = wishListItem
        
        return wishListCell
    }
    
    @IBAction func unwindToWishList(segue: UIStoryboardSegue) {
        
    }
    
}
