//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ParentChoreListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, ChoreCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var choreList: [[String:String]]?
    
    var pendingChores: [[String:String]]?
    var completedChores: [[String:String]]?
    
    let apiManager = APIManager()

    override func viewDidLoad() {
        createChoreModel()
    }
    
    func createChoreModel() {
        apiManager.chores { (choresResponse) in
            self.choreList = choresResponse.map({
                let value = ($0["value"] as! Float)
                let status = ($0["status"] as! String)
                return [
                    "name" : $0["description"] as! String,
                    "childName" : "Hadi",
                    "amount" : "$\(String(format: "%.0f", value))",
                    "status" : status
                ]
            })
            
            self.pendingChores = self.choreList?.filter({ (chore) -> Bool in
                return chore["status"] != "COMPLETED"
            })
            
            self.completedChores = self.choreList?.filter({ (chore) -> Bool in
                return chore["status"] == "COMPLETED"
            })
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            guard let count = self.pendingChores?.count else {
                return 0
            }
            
            return count
        }
        else {
            guard let count = self.completedChores?.count else {
                return 0
            }
            
            return count
        }
        
    }

    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let choreCell = tableView.dequeueReusableCell(withIdentifier: "ParentChore") as! ChoreTableViewCell
        choreCell.delegate = self
        
        if indexPath.section == 0 {
            guard let chore = self.pendingChores?[indexPath.item] else {
                return UITableViewCell()
            }
            
            choreCell.choreNameLabel.text = chore["name"]
            choreCell.choreChildNameLabel.text = chore["childName"]
            choreCell.choreValueLabel.text = chore["amount"]
        }
        else {
            guard let chore = self.completedChores?[indexPath.item] else {
                return UITableViewCell()
            }
            
            choreCell.choreNameLabel.text = chore["name"]
            choreCell.choreChildNameLabel.text = chore["childName"]
            choreCell.choreValueLabel.text = chore["amount"]
        }
        
        return choreCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Pending" : "Completed"
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
