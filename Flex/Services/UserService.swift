//
//  UserService.swift
//  Flex
//
//  Created by Joe Suzuki on 2/26/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation

struct UserService {
    
    public func create(_ name: String,_ email: String) {
    }

    static func creates(_ name: String, completion: @escaping (User?) -> Void) {
    }
    
    static func show(forUID uid: String, completion: @escaping (User?) -> Void) {
    }
}

