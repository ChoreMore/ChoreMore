//
//  WishListItemDetailViewController.swift
//  ChoreMore
//
//  Created by James Litjens on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import UIKit

class WishListItemDetailViewController: UIViewController {

    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var itemCostTextField: UITextField!
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
