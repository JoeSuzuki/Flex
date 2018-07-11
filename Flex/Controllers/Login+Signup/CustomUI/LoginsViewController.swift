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
    }
}
