//
//  UIColor+Utility.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

extension UIColor {
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(r: r, g: g, b: b, a: 1)
    }
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    @nonobjc class var offWhite: UIColor {
        return UIColor(r: 252.0, g: 252.0, b: 254.0)
    }
    @nonobjc class var appleOrange: UIColor {
        return UIColor(r: 255, g: 149, b: 0)
    }
    @nonobjc class var mainBlue: UIColor {
        return UIColor(r: 32, g: 85, b: 219)
    }
    @nonobjc class var appleLightBlue: UIColor {
        return UIColor(r: 90, g: 200, b: 250)
    }
    @nonobjc class var mainLightBlue: UIColor {
        return UIColor(r: 71, g: 186, b: 251)
    }
    @nonobjc class var backgroundGrey: UIColor {
        return UIColor(r: 230, g: 230, b: 230)
    }
    @nonobjc class var secondBackgroundGrey: UIColor {
        return UIColor(r: 232, g: 236, b: 241)
    }
}
