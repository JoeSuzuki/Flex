//
//  GroupHomeController+NavigationBar.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

extension GroupHomeController {
    
    func setupNavigationBarItems() {
        setupRightNavItems()
        setupLeftNavItems()
        setupRemainNavItems()
    }
    
    private func setupRemainNavItems() {
//        let tittleImageView = UIImageView(image: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysTemplate))
//        tittleImageView.tintColor = .white
//        tittleImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        tittleImageView.contentMode = .scaleAspectFit
//        navigationItem.titleView = tittleImageView
        
        navigationItem.title = "Flex"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 28),NSAttributedStringKey.foregroundColor: UIColor.white]

        navigationController?.navigationBar.barTintColor = .mainLightBlue
        navigationController?.navigationBar.isTranslucent = false

        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = .backgroundGrey
        
        view.addSubview(navBarSeparatorView)
        
        navBarSeparatorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        navBarSeparatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        navBarSeparatorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        navBarSeparatorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        navBarSeparatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
    
    private func setupLeftNavItems() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "Clock").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        followButton.addTarget(self, action: #selector(buttonActions), for: .touchUpInside)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "Home").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        searchButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton)]
    }
    
    @objc func buttonAction() {
        let loginViewController = AuthUIViewController()
        let navigationController = UINavigationController(rootViewController: loginViewController)
//        navigationController.navigationBar.isTranslucent = false
        
        present(navigationController, animated: false, completion: nil)
//        let groupScheduleViewController = GroupScheduleViewController(collectionViewLayout: UICollectionViewFlowLayout())
//        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)

    }
    
    @objc func buttonActions() {
//        let homeController = ProfileViewController(collectionViewLayout: UICollectionViewFlowLayout())

//        let loginViewController = ScheduleHomeController()

//        present(UINavigationController(rootViewController: homeController), animated: true, completion: nil)
        
//        let createGroupFormController = CreateGroupFormController()
////        present(createGroupFormController, animated: true, completion: nil)
//        navigationController?.pushViewController(createGroupFormController, animated: true)
        let groupScheduleViewController = CreateGroupFormController(collectionViewLayout: UICollectionViewFlowLayout())
        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)
    }
}
