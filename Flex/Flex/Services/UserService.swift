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

    public func setupBasicInfomation() {
        var db: Firestore!
        db = Firestore.firestore()
        
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "name": "Joe Suzuki",
            "age": 16,
            "profileImageUrl": ""
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }

    public func categoriesSetup(_ catergoryName: String) {
        var db: Firestore!
        db = Firestore.firestore()
        
        db.collection("categories").document("\(catergoryName)").setData([
            "Joe Suzuki" : ["11", "joe"]
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
            }
        }
    }

}

