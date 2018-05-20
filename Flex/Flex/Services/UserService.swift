//
//  UserService.swift
//  Flex
//
//  Created by Joe Suzuki on 2/26/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import FirebaseAuth.FIRAuth
import FirebaseFirestore

struct UserService {
    
    public func create(_ name: String,_ email: String) {
        var db: Firestore!
        db = Firestore.firestore()
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "name": name,
            "email": email,
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
        }
    }

    static func creates(_ firUser: FIRUser, name: String, completion: @escaping (User?) -> Void) {
        var db: Firestore!
        db = Firestore.firestore()
        
        let ref = db.collection("users").document(firUser.uid)
        
        ref.setData([
            "name": name
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
            }
        }
    }
}

