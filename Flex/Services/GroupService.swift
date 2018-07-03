//
//  GroupService.swift
//  Flex
//
//  Created by Joe Suzuki on 4/30/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import Firebase

struct GroupService {
    
    public func setupCategories(_ catergoryName: String) {
        var db: Firestore!
        db = Firestore.firestore()
        
        db.collection("categories").document("\(catergoryName)").setData([
            "11:00" : [],
            "12:00" : [],
            "1:00" : []
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
            }
        }
    }
    
}


