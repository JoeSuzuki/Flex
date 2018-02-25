//
//  GroupTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

class Group {
    let ownerName: String
    let groupName: String
    let location: String
    let time = Date()
    let startCloseTime: [Date: Date]
    let openDays: [String]
    let groupBio: String
    let groupImage: String
    
    init(groupName : String, location : String, startCloseTime : [Date: Date], openDays : [String], groupBio : String, groupImage : String) {
        self.ownerName = "joe"
        self.groupName = groupImage
        self.location = location
        self.startCloseTime = startCloseTime
        self.openDays = openDays
        self.groupBio = groupBio
        self.groupImage = groupImage
    }
}

