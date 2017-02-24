//
//  CoolSegues.swift
//  ChoreMore
//
//  Created by Nicholas Cross on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import UIKit

class ReplaceSegue: UIStoryboardSegue {
    
    override func perform() {
        source.view.window?.rootViewController = destination
    }
}
