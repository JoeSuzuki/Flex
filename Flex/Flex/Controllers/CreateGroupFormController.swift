//
//  CreateGroupFormController.swift
//  Flex
//
//  Created by Joe Suzuki on 6/2/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Eureka
import ImageRow

class CreateGroupFormController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarItems()
        
        form +++ Section("Basic Info")
            <<< NameRow(){ row in
                row.title = "Name"
                row.placeholder = "Enter your group name"
            }
            <<< LocationRow("location") {
                $0.title = "Location"
                }.onChange { [weak self] row in
                    self!.tableView!.reloadData()
            }
            <<< MultipleSelectorRow<String>() {
                $0.title = "Availability"
                $0.selectorTitle = "Availability"
                $0.options = ["Sunday", "Monday", "Tuesday", "Wensday", "Thursday", "Friday", "Saturday"]
            }
            
            +++ Section("")
            <<< ImageRow() {
                $0.title = "Profile Picture"
                $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum]
                $0.clearAction = .yes(style: .default)
                }
                .cellUpdate { cell, row in
                    cell.accessoryView?.layer.cornerRadius = 17
                    cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
            }

            +++ Section("Contact Details")
            <<< EmailRow(){
                $0.title = "Email"
                $0.placeholder = "Enter your email"
            }
            <<< PhoneRow() {
                $0.title = "Phone Number"
                $0.placeholder = "(###) ###-####"
            }
        // Enables the navigation accessory and stops navigation when a disabled row is encountered
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        // Enables smooth scrolling on navigation to off-screen rows
        animateScroll = true
    }
}


extension CreateGroupFormController {
    func setupNavigationBarItems() {
        setupRightNavItems()
        setupLeftNavItems()
        setupRemainNavItems()
    }
    
    private func setupRemainNavItems() {
        navigationItem.title = "Create a Group"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 24),NSAttributedStringKey.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.barTintColor = .mainBlue
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
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func submitButton() {
        self.navigationController?.popViewController(animated: true)
    }

}
