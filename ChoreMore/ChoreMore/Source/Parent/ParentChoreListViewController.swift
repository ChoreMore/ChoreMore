//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ParentChoreListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, ChoreCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var choreList: [[String:String]]?

    override func viewDidLoad() {
        self.choreList = [
            [
                "name" : "Clean dishes",
                "childName" : "Hadi"
            ],
            [
                "name" : "Make bed",
                "childName" : "Kamal"
            ]
        ]
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.choreList?.count else {
            return 0
        }
        
        return count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let choreCell = tableView.dequeueReusableCell(withIdentifier: "ParentChore") as! ChoreTableViewCell
        choreCell.delegate = self
        
        guard let chore = self.choreList?[indexPath.item] else {
            return UITableViewCell()
        }
        
        choreCell.choreNameLabel.text = chore["name"]
        choreCell.choreChildNameLabel.text = chore["childName"]
        
        return choreCell
    }
    
    @IBAction func unwindToParentChoreList(segue: UIStoryboardSegue) {

    }
    
    func didTapAccept(cell: ChoreTableViewCell) {
        
        print("accept")
    }
    
    func didTapReject(cell: ChoreTableViewCell) {
        print("reject")
    }

}
