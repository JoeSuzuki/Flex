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


