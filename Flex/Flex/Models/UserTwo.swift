//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

class UserTwo {
    let name: String
    let username: String
    let age: String
    let sex: String
    let email: String
    let profileImageUrl: String
    
    init(username : String, age : String, sex : String, email : String, profileImageUrl : String) {
        self.name = "joe"
        self.username = username
        self.age = age
        self.sex = sex
        self.email = email
        self.profileImageUrl = profileImageUrl
    }
}
