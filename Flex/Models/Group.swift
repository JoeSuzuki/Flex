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
    
    @objc var _isbn: String?
    @objc var _category: String?
    @objc var _ownerName: String?
    @objc var _groupName: String?
    @objc var _location: String?
    @objc var _startCloseTime: [Date: Date]?
    @objc var _openDays: [String]?
    @objc var _groupBio: String?
    @objc var _groupImage: String?

    class func dynamoDBTableName() -> String {
        return "Group"
    }
    
    class func hashKeyAttribute() -> String {
        return "_isbn"
    }
    
    class func rangeKeyAttribute() -> String {
        return "_category"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
            "_isbn" : "ISBN",
            "_category" : "Category"
        ]
    }
}
