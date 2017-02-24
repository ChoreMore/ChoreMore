//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ParentChoreListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    var choreList: [String]?

    override func viewDidLoad() {
        self.choreList = ["haha", "haha22"]
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.choreList?.count else {
            return 0
        }
        
        return count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "ParentChore")!
    }
    
    @IBAction func unwindToParentChoreList(segue: UIStoryboardSegue) {

    }

}
