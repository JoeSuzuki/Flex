//
//  EurekaCreateGroupFormController.swift
//  Flex
//
//  Created by Joe Suzuki on 6/7/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import Eureka
import ImageRow

class EurekaCreateGroupFormController: FormViewController {
    
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
