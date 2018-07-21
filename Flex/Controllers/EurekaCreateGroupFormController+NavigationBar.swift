//
//  EurekaCreateGroupFormController+NavigationBar.swift
//  Flex
//
//  Created by Joe Suzuki on 7/2/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Eureka

extension EurekaCreateGroupFormController {
    func setupNavigationBarItems() {
        setupRightNavItems()
        setupLeftNavItems()
        setupRemainNavItems()
    }
    
    private func setupRemainNavItems() {
        navigationItem.title = "Create a Group"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 24),NSAttributedStringKey.foregroundColor: UIColor.white]
        
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
        followButton.setImage(#imageLiteral(resourceName: "Home").withRenderingMode(.alwaysOriginal), for: .normal)
        //        followButton.setTitle("Cancel", for: .normal)
        followButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        followButton.addTarget(self, action: #selector(cancelButton), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "Home").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        searchButton.addTarget(self, action: #selector(submitButton), for: .touchUpInside)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton)]
    }
    
    @objc func cancelButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func submitButton() {
        let nameRow: NameRow? = form.rowBy(tag: "Name")
        let location: TextRow? = form.rowBy(tag: "Location")
        let description: TextRow? = form.rowBy(tag: "Description")
        let openTime: TextRow? = form.rowBy(tag: "Open Time")
        let endTime: TextRow? = form.rowBy(tag: "End Time")

        let availability: Section?  = form.sectionBy(tag: "Availability")
        let profilePicture: Section?  = form.sectionBy(tag: "Profile Picture")
        let email: Section?  = form.sectionBy(tag: "Email")
        let phoneNumber: Section?  = form.sectionBy(tag: "Phone Number")

        print(nameRow)
        print(availability)
//        self.navigationController?.popViewController(animated: true)
    }
}
