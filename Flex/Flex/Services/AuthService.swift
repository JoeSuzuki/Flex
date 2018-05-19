//
//  AuthService.swift
//  Flex
//
//  Created by Joe Suzuki on 5/17/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Foundation
import FirebaseAuth

struct AuthService {
    
    func createUser(_ email: String,_ password: String, completion: @escaping (User?) -> Void){
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                completion(nil)
            }
            completion(Auth.auth().currentUser)
        }
    }
    
}


