//
//  UIImageView+Utility.swift
//  Flex
//
//  Created by Joe Suzuki on 5/5/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func circular(width : CGFloat, color : CGColor){
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.borderWidth = width
        self.layer.borderColor = color
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
}

