//
//  TabBarController.swift
//  Flex
//
//  Created by Joe Suzuki on 5/17/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var groupHomeController: GroupHomeController?
    var scheduleHomeController: ScheduleHomeController?
    var profileViewController: ProfileViewController?

    var groupNavController: UINavigationController!
    var scheduleNavController: UINavigationController!
    var profileNavController: UINavigationController!

    override func viewDidLoad() {
        view.backgroundColor = .white
        setupTabs()
        guard let items = tabBar.items else { return }
        for tabBarItem in items {
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
    }
    
    func setupTabs() {
        groupHomeController = GroupHomeController(collectionViewLayout: UICollectionViewFlowLayout())
        scheduleHomeController = ScheduleHomeController(collectionViewLayout: UICollectionViewFlowLayout())
        profileViewController =  ProfileViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        groupNavController = UINavigationController(rootViewController: groupHomeController!)
        groupNavController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal))
        
        scheduleNavController = UINavigationController(rootViewController: scheduleHomeController!)
        scheduleNavController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal))
        
        profileNavController = UINavigationController(rootViewController: profileViewController!)
        profileNavController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Flex").withRenderingMode(.alwaysOriginal))
        
        let viewControllers: [UINavigationController] = [
            groupNavController,
            scheduleNavController,
            profileNavController
        ]
        
        setViewControllers(viewControllers, animated: true)
    }
    
    func showTabBar(animated: Bool) {
        if !tabBar.isHidden { return }
        tabBar.isHidden = false
        if animated {
            UIView.animate(withDuration: 0.2, animations: {
                self.tabBar.frame = CGRect(x: 0, y: self.view.frame.height - self.tabBar.frame.height, width: self.tabBar.frame.width, height: self.tabBar.frame.height)
            })
        } else {
            tabBar.frame = CGRect(x: 0, y: view.frame.height - tabBar.frame.height, width: tabBar.frame.width, height: tabBar.frame.height)
        }
    }
    
    func hideTabBar(animated: Bool) {
        if tabBar.isHidden { return }
        tabBar.isHidden = true
        if animated {
            UIView.animate(withDuration: 0.2, animations: {
                self.tabBar.frame = CGRect(x: 0, y: self.view.frame.height, width: self.tabBar.frame.width, height: self.tabBar.frame.height)
            })
        } else {
            tabBar.frame = CGRect(x: 0, y: view.frame.height, width: tabBar.frame.width, height: tabBar.frame.height)
        }
    }

}
