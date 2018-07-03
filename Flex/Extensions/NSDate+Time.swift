//
//  NSDate+Time.swift
//  Flex
//
//  Created by Joe Suzuki on 4/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import UIKit

extension NSDate
{
    func hour() -> Int
    {
        //Get Hour
        let date = Date()
        let calendar = NSCalendar.current
        let hour = calendar.component(.hour, from: date)

        //Return Hour
        return hour
    }
    
    
    func minute() -> Int
    {
        //Get Minute
        let date = Date()
        let calendar = NSCalendar.current
        let minute = calendar.component(.minute, from: date)
        
        //Return Minute
        return minute
    }
    
    func toShortTimeString() -> String
    {
        //Get Short Time String
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let timeString = formatter.string(from: self as Date)
        
        //Return Short Time String
        return timeString
    }
}

