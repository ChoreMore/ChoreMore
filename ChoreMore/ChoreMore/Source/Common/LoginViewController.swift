//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {

  @IBOutlet weak var username: UITextField!
  @IBOutlet weak var password: UITextField!

  private var apiManager: APIManager?

  @IBAction func login(_ sender: Any) {
//    apiManager = APIManager()
//    apiManager?.login { state in
//      print(state)
//    }
//
//    apiManager?.accountDetails() { response in
//      if let accountsResponse = response["accountsResponse"] as? [String: Any], let accounts = accountsResponse["accounts"] as? [Any] {
//        for account in accounts {
//          if let account = account as? [String: Any] {
//            self.apiManager?.accountBalance(accountToken: account["accountToken"]! as! String) { balance in
//              print(balance)
//            }
//          }
//        }
//      }
//    }
  }

}
