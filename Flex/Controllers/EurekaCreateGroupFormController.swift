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
    var nameRow: String = ""
    var location: String = ""
    var descriptionValue: String = ""
    var openTime: String = ""
    var endTime: String = ""
    
    var availability: String? = nil
    var profilePicture: String? = nil
    var email: String? = nil
    var phoneNumber: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarItems()
        
        form +++ Section("Basic Info")
            <<< NameRow(){ row in
                row.title = "Name"
                row.tag = "Name"
                row.placeholder = "Enter your group name"
                }.onChange({ (row) in
                    self.nameRow = row.value != nil ? row.value! : "" //updating the value on change
                })
            <<< TextRow(){ row in
                row.title = "Location"
                row.tag = "Location"
                row.placeholder = "Enter the location of the venue"
                }.onChange({ (row) in
                    self.location = row.value != nil ? row.value! : "" //updating the value on change
                })
            <<< TextRow(){ row in
                row.title = "Description"
                row.tag = "Description"
                row.placeholder = "Enter the description"
                }.onChange({ (row) in
                    self.descriptionValue = row.value != nil ? row.value! : "" //updating the value on change
                })
            <<< TextRow(){ row in
                row.title = "Open Time"
                row.tag = "Open Time"
                row.placeholder = "Enter open time here"
                }.onChange({ (row) in
                    self.openTime = row.value != nil ? row.value! : "" //updating the value on change
                })
            <<< TextRow(){ row in
                row.title = "End Time"
                row.tag = "End Time"
                row.placeholder = "Enter end time here"
                }.onChange({ (row) in
                    self.endTime = row.value != nil ? row.value! : "" //updating the value on change
                })

//            <<< LocationRow("location") {
//                $0.title = "Location"
//            }
            <<< MultipleSelectorRow<String>() {
                $0.title = "Availability"
                $0.selectorTitle = "Availability"
                $0.tag = "Availability"
                $0.options = ["Sunday", "Monday", "Tuesday", "Wensday", "Thursday", "Friday", "Saturday"]
            }
            
            +++ Section("")
            <<< ImageRow() {
                $0.title = "Profile Picture"
                $0.tag = "Profile Picture"
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
                $0.tag = "Email"
                $0.placeholder = "Enter your email"
            }
            <<< PhoneRow() {
                $0.title = "Phone Number"
                $0.tag = "Phone Number"
                $0.placeholder = "(###) ###-####"
        }
        // Enables the navigation accessory and stops navigation when a disabled row is encountered
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        // Enables smooth scrolling on navigation to off-screen rows
        animateScroll = true
    }
}
