//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import FirebaseFirestore.FIRDocumentSnapshot

struct User {
    let name: String
    let uid: String
    let profileImageUrl: String?
    
    init(name: String, uid: String) {
        self.name = name
        self.uid = uid
        self.profileImageUrl = nil
    }
    
    init?(snapshot: DocumentSnapshot) {
        guard let dict = snapshot.data(),
            let name = dict["name"] as? String
            else { return nil }
        if let url = dict["profileImageUrl"] as? String {
            self.profileImageUrl = url
        } else {
            self.profileImageUrl = nil
        }
        self.uid = snapshot.documentID
        self.name = name
    }
}
