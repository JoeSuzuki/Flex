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
        navigationItem.title = "Flex"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 26),NSAttributedStringKey.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
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
        let groupScheduleViewController = EurekaCreateGroupFormController()
        let navigationController = UINavigationController(rootViewController: groupScheduleViewController)
        present(navigationController, animated: true, completion: nil)
//        let table = GroupTableViewController()
//        let navigationController = UINavigationController(rootViewController: table)

//        present(navigationController, animated: true, completion: nil)
    }
}
