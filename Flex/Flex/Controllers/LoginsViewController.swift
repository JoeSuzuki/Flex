//
//  LoginsViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 4/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class LoginsViewController: UIViewController {

    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.main.mainBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.main.mainBlue.cgColor
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        return button
    }()
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.main.mainBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.main.mainBlue.cgColor
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        
        return button
    }()
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Clock")
        //        let url = URL(string: "url_of_your_image")
        //        imageView.kf.setImage(with: url)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.main.mainBlue
        
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        view.addSubview(logoImageView)

        loginButton.anchor(top: nil, leading: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, size: .init(width: view.layer.frame.width / 2, height: view.layer.frame.height / 8))
        registerButton.anchor(top: nil, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: nil, size: .init(width: view.layer.frame.width / 2, height: view.layer.frame.height / 8))
        logoImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: registerButton.topAnchor, trailing: nil)
        logoImageView.heightAnchor.constraint(equalToConstant: view.layer.frame.height / 8)

    }
    @objc func handleLogin() {
        
    }
    @objc func handleRegister() {
        
    }
}
