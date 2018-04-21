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
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.main.mainBlue
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
        view.backgroundColor = UIColor.main.mainBlue
        
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        view.addSubview(containerView)
        view.addSubview(logoImageView)


        let height = view.layer.frame.height / 12
        let width = view.layer.frame.width

        loginButton.anchor(top: containerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: registerButton.topAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, size: .init(width: width, height: height))
        registerButton.anchor(top: loginButton.bottomAnchor, leading: registerButton.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: registerButton.trailingAnchor, size: .init(width: width, height: height))
        
        containerView.anchor(top: nil, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: loginButton.topAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
        
        logoImageView.anchor(top: containerView.topAnchor, leading: containerView.leadingAnchor, bottom: containerView.bottomAnchor, trailing: containerView.trailingAnchor, size: .init(width: 50, height: 50))
    
//        logoImageView.heightAnchor.constraint(equalToConstant: view.layer.frame.height / 10)

    }
    @objc func handleLogin() {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func handleRegister() {
        let handleRegisterController = HandleRegisterViewController()
        present(handleRegisterController, animated: true, completion: nil)
//        self.dismiss(animated: true, completion: nil)
    }
}
