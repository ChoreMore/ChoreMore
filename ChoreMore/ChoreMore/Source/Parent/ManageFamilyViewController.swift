//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ManageFamilyViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    var familyMembers: [[String:String]]?
    
    override func viewDidLoad() {
        self.familyMembers = [
            [
                "name" : "Hadi",
                "accountNumber" : "12345"
            ],
            [
                "name" : "Kamal",
                "accountNumber" : "67890"
            ]
        ]
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.familyMembers?.count else {
            return 0
        }
        
        return count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let childCell = tableView.dequeueReusableCell(withIdentifier: "FamilyMember") as! FamilyMemberCell
        
        guard let chore = self.familyMembers?[indexPath.item] else {
            return UITableViewCell()
        }
        
        childCell.childNameLabel.text = chore["name"]
        childCell.accountNumberLabel.text = "Account number: \(chore["accountNumber"]!)"
        
        return childCell
    }
    
    @IBAction func unwindToParentChoreList(segue: UIStoryboardSegue) {
        
    }

    
    @IBAction func unwindToManageFamily(segue: UIStoryboardSegue) {

    }

}
