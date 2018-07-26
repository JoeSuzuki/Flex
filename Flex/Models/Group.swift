//
//  GroupTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import UIKit
import AWSDynamoDB

class Groups: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    var _userId: String?
    var _groupId: String?
    var _description: String?
    var _groupName: String?
    var _image: String?
    var _location: String?
    var _openDays: [String]?
    var _owner: String?
    var _startCloseTime: [String]?
    
    class func dynamoDBTableName() -> String {

        return "flex-mobilehub-329659210-Groups"
    }
    
    class func hashKeyAttribute() -> String {
        
        return "_userId"
    }
    
    class func rangeKeyAttribute() -> String {
        
        return "_groupId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
            "_userId" : "userId",
            "_groupId" : "groupId",
            "_description" : "description",
            "_groupName" : "groupName",
            "_image" : "image",
            "_location" : "location",
            "_openDays" : "openDays",
            "_owner" : "owner",
            "_startCloseTime" : "startCloseTime",
        ]
    }
}
