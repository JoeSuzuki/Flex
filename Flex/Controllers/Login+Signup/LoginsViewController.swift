//
//  LoginsViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 4/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseFirestore

typealias FIRUser = FirebaseAuth.User

class LoginsViewController: UIViewController {

    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.mainBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.mainBlue.cgColor
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        return button
    }()
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Clock")
        //        let url = URL(string: "url_of_your_image")
        //        imageView.kf.setImage(with: url)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainBlue

        view.addSubview(loginButton)
        view.addSubview(containerView)
        view.addSubview(logoImageView)


        let height = view.layer.frame.height / 12
        let width = view.layer.frame.width

        containerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: loginButton.topAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, size: .init(width: width, height: height))

        loginButton.anchor(top: containerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: width, height: height))
        
//        logoImageView.anchor(top: containerView.topAnchor, leading: containerView.leadingAnchor, bottom: containerView.bottomAnchor, trailing: containerView.trailingAnchor, size: .init(width: 50, height: 100))
    
        logoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
//        logoImageView.heightAnchor.constraint(equalToConstant: view.layer.frame.height / 10)

    }
    @objc func handleLogin() {
//        self.dismiss(animated: true, completion: nil)
        guard let authUI = FUIAuth.defaultAuthUI() else { return }
        
        authUI.delegate = self

        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
}

extension LoginsViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        guard let user = user else { return }
        
        let userRef = Firestore.firestore().collection("users").document(user.uid)
        
        
        UserService.show(forUID: user.uid) { (user) in
            // handle existing user
            if let user = user {
                User.setCurrent(user, writeToUserDefaults: true)
                
                let initialViewController = TabBarController()
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
            }
                // handle new user
            else {
                guard let firUser = Auth.auth().currentUser else { return }
                guard let displayName = firUser.displayName else { return }
                UserService.creates(firUser, name: displayName) { (user) in
                    guard let user = user else { return }
                    
                    User.setCurrent(user, writeToUserDefaults: true)
                }
                let vc = TabBarController()
                self.present(vc, animated: true, completion: nil)
            }
        }
    }
}
