//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

class User {
    let name: String
    let uid: String
    let username: String
    let age: String
    let sex: String
    let email: String
    let profileImageUrl: String
    
    init(name: String, uid: String, username : String, age : String, sex : String, email : String, profileImageUrl : String) {
        self.name = name
        self.uid = uid
        self.username = username
        self.age = age
        self.sex = sex
        self.email = email
        self.profileImageUrl = profileImageUrl
    }
}
