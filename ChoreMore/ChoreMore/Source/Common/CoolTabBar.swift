//
//  CoolTabBar.swift
//  ChoreMore
//
//  Created by Nicholas Cross on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class CoolTabBarController : UITabBarController {
    
    override func viewWillLayoutSubviews() {
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = 60
        tabFrame.origin.y = self.view.frame.size.height - 60
        self.tabBar.frame = tabFrame
    }
    
}
