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
    static func createGroups() {
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        let groupsItem: Groups = Groups()
        
//        groupsItem._userId = "1234"
//        groupsItem._groupId = "Tech"
        groupsItem._owner = ""
        groupsItem._description = ""
        groupsItem._image = ""
        groupsItem._groupName = ""
        groupsItem._location = ""
//        groupsItem._startCloseTime = ""
        groupsItem._openDays = ["Monday", "Tuesday", "Wensday", "Thursday", "Friday"]
        groupsItem._startCloseTime = ["12:00", "1:00"]

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
            rangeKey: "Tech",
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

        //        groupsItem._userId = "1234"
        //        groupsItem._groupId = "Tech"
        groupsItem._owner = ""
        groupsItem._description = ""
        groupsItem._image = ""
        groupsItem._groupName = ""
        groupsItem._location = ""
        //        groupsItem._startCloseTime = ""
        groupsItem._openDays = ["Monday", "Tuesday", "Wensday", "Thursday", "Friday"]
        groupsItem._startCloseTime = ["12:00", "1:00"]

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
//        itemToDelete?._isbn = "1234"
//        itemToDelete?._category = "Tech"
        
        dynamoDbObjectMapper.remove(itemToDelete!, completionHandler: {(error: Error?) -> Void in
            if let error = error {
                print(" Amazon DynamoDB Save Error: \(error)")
                return
            }
            print("An item was deleted.")
        })
    }
    func queryBooks() {
        let queryExpression = AWSDynamoDBQueryExpression()
        queryExpression.keyConditionExpression = "#isbn = :ISBN AND #category = :Category"
        
        queryExpression.expressionAttributeNames = [
            "#isbn": "ISBN",
            "#category": "Category"
        ]
        
        queryExpression.expressionAttributeValues = [
            ":ISBN" : "1234",
            ":Category" : "Tech"
        ]
        
        // Make the query
        let dynamoDbObjectMapper = AWSDynamoDBObjectMapper.default()
        
        dynamoDbObjectMapper.query(Groups.self, expression: queryExpression) { (output: AWSDynamoDBPaginatedOutput?, error: Error?) in
            if error != nil {
                print("The request failed. Error: \(String(describing: error))")
            }
            if output != nil {
                for groups in output!.items {
                    let groupsItem = groups as? Groups
                    print("\(groupsItem!._groupName!)")
                }
            }
        }
    }
}
