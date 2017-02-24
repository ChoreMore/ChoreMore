//
// Created by Nicholas Cross on 24/02/2017.
// Copyright (c) 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class CoolCache {
    static var accounts: [String:[String : Any]] = [String:[String : Any]]()
    static var balances: [String:[String : Any]] = [String:[String : Any]]()
}

class LoginViewController : UIViewController {

  @IBOutlet weak var username: UITextField!
  @IBOutlet weak var password: UITextField!

  private var apiManager: APIManager?

  @IBAction func login(_ sender: Any) {
    apiManager = APIManager()
    apiManager?.login { state in
      print(state)
    }

    apiManager?.accountDetails() { response in
      if let accountsResponse = response["accountsResponse"] as? [String: Any], let accounts = accountsResponse["accounts"] as? [Any] {
        for account in accounts {
          if let account = account as? [String: Any] {
            print(account)
            CoolCache.accounts[account["accountToken"]! as! String] = account
            self.apiManager?.accountBalance(accountToken: account["accountToken"]! as! String) { balance in
              print(balance)
              CoolCache.balances[account["accountToken"]! as! String] = balance
            }
          }
        }
      }
    }
  }

}
