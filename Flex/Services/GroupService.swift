//
//  GroupService.swift
//  Flex
//
//  Created by Joe Suzuki on 4/30/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

struct GroupService {
    static func createGroups() {
        let groupsItem: Groups = Groups()
        
        groupsItem._userId = "1234"
        groupsItem._groupId = "Tech"
        groupsItem._owner = "Joe"
        groupsItem._description = "THiSSFSDSD"
        groupsItem._image = "SDSDSDSDSD"
        groupsItem._groupName = "SDSDSDSDS"
        groupsItem._location = "DSDSDS"
        groupsItem._openDays = ["Monday", "Tuesday", "Wensday", "Thursday", "Friday"]
        groupsItem._startCloseTime = ["12:00", "1:00"]
        
    }
    static func createGroup(_ descripton: String,_ image: String,_ groupName: String,_ location: String,_ openDays: Array<String>,_ times: Array<String>) {
        let groupsItem: Groups = Groups()
        
        groupsItem._userId = "1234"
        groupsItem._groupId = "Tech"
        groupsItem._owner = "Joe"
        groupsItem._description = descripton
        groupsItem._image = image
        groupsItem._groupName = groupName
        groupsItem._location = location
        groupsItem._openDays = openDays
        groupsItem._startCloseTime = times
            }
    static func readGroups() {
        let groupsItem: Groups = Groups()
        
    }
    static func updateBooks() {
        let groupsItem: Groups = Groups()

    }
    
    static func deleteBooks() {
        let itemToDelete = Groups()
        
    }
    
    func queryBooks() {

    }
}
