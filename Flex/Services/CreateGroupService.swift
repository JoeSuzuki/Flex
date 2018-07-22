//
//  CreateGroupService.swift
//  Flex
//
//  Created by Joe Suzuki on 7/20/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import AWSCore
import AWSDynamoDB

struct CreateGroupService {
    func createGroups() {
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        let groupsItem: Groups = Groups()
        
        groupsItem._isbn = "1234"
        groupsItem._category = "Tech"
        groupsItem._ownerName = ""
        groupsItem._groupName = ""
        groupsItem._location = ""
//        groupsItem._startCloseTime = ""
        groupsItem._openDays = ["Monday", "Tuesday", "Wensday", "Thursday", "Friday"]
        groupsItem._groupBio = ""
        groupsItem._groupImage = ""

        //Save a new item
        dynamoDbObjectMapper.save(groupsItem, completionHandler: {
            (error: Error?) -> Void in
            if let error = error {
                print("Amazon DynamoDB Save Error: \(error)")
                return
            }
            print("An item was saved.")
        })
    }
    func readGroups() {
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        let groupsItem: Groups = Groups()
        
        dynamoDbObjectMapper.load(
            Groups.self,
            hashKey: "1234",
            rangeKey: "Test",
            completionHandler: {
                (objectModel: AWSDynamoDBObjectModel?, error: Error?) -> Void in
                if let error = error {
                    print("Amazon DynamoDB Read Error: \(error)")
                    return
                }
                print("An item was read.")
        })
    }
    func updateBooks() {
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        let groupsItem: Groups = Groups()

        groupsItem._isbn = "1234"
        groupsItem._category = "Tech"
        groupsItem._ownerName = "Joe Suzuki"
        groupsItem._groupName = "Doctor Office"
        groupsItem._location = "New York"
        //        groupsItem._startCloseTime = ""
        groupsItem._openDays = ["Monday", "Tuesday", "Wensday", "Thursday"]
        groupsItem._groupBio = ""
        groupsItem._groupImage = ""

        dynamoDbObjectMapper.save(groupsItem, completionHandler: {(error: Error?) -> Void in
            if let error = error {
                print(" Amazon DynamoDB Save Error: \(error)")
                return
            }
            print("An item was updated.")
        })
    }
    func deleteBooks() {
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        
        let itemToDelete = Groups()
        itemToDelete?._isbn = "1234"
        itemToDelete?._category = "Test"
        
        dynamoDbObjectMapper.remove(itemToDelete!, completionHandler: {(error: Error?) -> Void in
            if let error = error {
                print(" Amazon DynamoDB Save Error: \(error)")
                return
            }
            print("An item was deleted.")
        })
    }
}
