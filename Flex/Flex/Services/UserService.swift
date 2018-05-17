//
//  UserService.swift
//  Flex
//
//  Created by Joe Suzuki on 2/26/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import Firebase

struct UserService {

    public func setupBasicInfomation(_ name: String,_ email: String,_ password: String) {
        var db: Firestore!
        db = Firestore.firestore()
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "name": name,
            "email": email,
            "password": password
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
}

