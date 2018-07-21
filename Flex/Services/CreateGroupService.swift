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
    

}

