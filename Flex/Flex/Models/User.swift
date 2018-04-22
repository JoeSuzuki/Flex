//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

struct User {
    let name: String
    let uid: String
    let age: String
    let sex: String
    let email: String
    let profileImageUrl: String?
    
    init(name: String, uid: String, age : String, sex : String, email : String) {
        self.name = name
        self.uid = uid
        self.age = age
        self.sex = sex
        self.email = email
        self.profileImageUrl = nil
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let name = dict["name"] as? String,
            let age = dict["age"] as? String,
            let sex = dict["sex"] as? String,
            let email = dict["email"] as? String
            else { return nil }
        if let url = dict["profileImageUrl"] as? String {
            self.profileImageUrl = url
        } else {
            self.profileImageUrl = nil
        }
        self.uid = snapshot.key
        self.name = name
        self.age = age
        self.sex = sex
        self.email = email
    }
}
