//
//  Time.swift
//  Flex
//
//  Created by Joe Suzuki on 2/11/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

class Time {
    let hour: Int
    let minute: Int
    let second: Int
    
    init(hour : Int, minute : Int, second : Int) {
        self.hour = hour    //    hour = ((h>=0 && h <= 24) ? h : 0);
        self.minute = minute    //    minute = ((m>=0 && m <= 60) ? m : 0);
        self.second = second    //    second = ((s>=0 && s <= 60) ? s : 0);
        
    }
    
    public func military() {
        return "self.hour self.minute self.second"
    }
}
