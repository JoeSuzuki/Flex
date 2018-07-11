//
//  AuthUIViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/9/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import AWSAuthCore
import AWSAuthUI

class AuthUIViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if !AWSSignInManager.sharedInstance().isLoggedIn {
            AWSAuthUIViewController.presentViewController(with: self.navigationController!, configuration: nil, completionHandler: { (provider: AWSSignInProvider, error: Error?) in //self.navigationController?.dismiss(animated: false, completion: nil)
                if error != nil {
                    print("Error occurred: \(String(describing: error))")
                } else {
                    // Sign in successful.
                }
            })
        }
    }
}
// func signOutButtonPress() {
//
//AWSSignInManager.sharedInstance().logout(completionHandler: {(result: Any?, error: Error?) in
//    self.showSignIn()
//    // print("Sign-out Successful: \(signInProvider.getDisplayName)");
//
//})
//}

