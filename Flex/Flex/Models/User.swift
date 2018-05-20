//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import FirebaseFirestore.FIRDocumentSnapshot

class User: NSObject {
    let name: String
    let uid: String
    let profileImageUrl: String?
    
    init(name: String, uid: String) {
        self.name = name
        self.uid = uid
        self.profileImageUrl = nil
        super.init()
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
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        guard let uid = aDecoder.decodeObject(forKey: "uid") as? String,
            let name = aDecoder.decodeObject(forKey: "name") as? String,
            let profileImageUrl = aDecoder.decodeObject(forKey: "profileImageUrl") as? String
            else { return nil }
        
        self.uid = uid
        self.name = name
        self.profileImageUrl = profileImageUrl
        super.init()
    }
    
    private static var _current: User?

    class func setCurrent(_ user: User, writeToUserDefaults: Bool = false) {
        if writeToUserDefaults {
            let data = NSKeyedArchiver.archivedData(withRootObject: user)
            UserDefaults.standard.set(data, forKey: "currentUser")
        }
        
        _current = user
    }

}

extension User: NSCoding {
    func encode(with aCoder: NSCoder) {
        aCoder.encode(uid, forKey: "uid")
        aCoder.encode(name, forKey: "name")
    }
}
