//
//  UIColor+Utility.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) { // simplfys UIColor
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}


