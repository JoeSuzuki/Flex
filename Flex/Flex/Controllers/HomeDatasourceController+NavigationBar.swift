//
//  HomeDatasourceController+NavigationBar.swift
//  Flex
//
//  Created by Joe Suzuki on 12/30/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//
//

import UIKit

extension HomeDatasourceController {
    
    func setupNavigationBarItems() {
        setupRightNavItems()
        setupLeftNavItems()
        setupRemainNavItems()
    }
    
    private func setupRemainNavItems() {
        let tittleImageView = UIImageView(image: #imageLiteral(resourceName: "compose"))
        tittleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        tittleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = tittleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupLeftNavItems() {
        let groupButton = UIButton(type: .system)
        groupButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        groupButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: groupButton)
    }
    
    private func setupRightNavItems() {
        let profileButton = UIButton(type: .system)
        profileButton.setImage(#imageLiteral(resourceName: "follow-1").withRenderingMode(.alwaysOriginal), for: .normal)
        profileButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: profileButton)
    }
}

