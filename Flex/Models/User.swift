//
//  UserTwo.swift
//  Flex
//
//  Created by Joe Suzuki on 1/27/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

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
    
    required init?(coder aDecoder: NSCoder) {
        guard let uid = aDecoder.decodeObject(forKey: Constants.UserDefaults.uid) as? String,
            let name = aDecoder.decodeObject(forKey: Constants.UserDefaults.name) as? String,
            let profileImageUrl = aDecoder.decodeObject(forKey: Constants.UserDefaults.profileImageUrl) as? String
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
            UserDefaults.standard.set(data, forKey: Constants.UserDefaults.currentUser)
        }
        
        _current = user
    }
    
    // MARK: - Singleton
    
    static var current: User {
        guard let currentUser = _current else {
            fatalError("Error: current user doesn't exist")
        }
        
        return currentUser
    }
    
    // MARK: - Class Methods
    
    static func setCurrent(_ user: User) {
        _current = user
    }

}

extension User: NSCoding {
    func encode(with aCoder: NSCoder) {
        aCoder.encode(uid, forKey: "uid")
        aCoder.encode(name, forKey: "name")
    }
}
