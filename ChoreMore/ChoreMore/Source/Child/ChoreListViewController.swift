//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ChoreListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var choreList: [String]?
    
    @IBOutlet weak var choresTableView: UITableView!
    @IBOutlet weak var childNameLabel: UILabel!
    @IBOutlet weak var childBalanceLabel: UILabel!
    @IBOutlet weak var choreTotalAvailableLabel: UILabel!
    
    override func viewDidLoad() {
        self.choreList = ["Clean dishes", "Make bed"]
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.choreList?.count else {
            return 0
        }
        
        return count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let choreCell = tableView.dequeueReusableCell(withIdentifier: "choreCell") as! ChoreTableViewCell
        
        guard let chore = self.choreList?[indexPath.item] else {
            return UITableViewCell()
        }
        
        choreCell.choreNameLabel.text = chore
        
        return choreCell
    }
    
    @IBAction func unwindToParentChoreList(segue: UIStoryboardSegue) {
        
    }

}
