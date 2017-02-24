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
    apiManager = APIManager()
    apiManager?.login { state in
    }
  }

}
