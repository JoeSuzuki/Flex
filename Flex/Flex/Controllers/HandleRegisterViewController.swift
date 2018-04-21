//
//  HandleRegisterViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 4/16/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Eureka
import ImageRow

class HandleRegisterViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Flex"

        form +++ Section("")
            <<< ImageRow() {
                $0.title = "Profile Picture"
                $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum]
                $0.clearAction = .yes(style: .default)
                }
                .cellUpdate { cell, row in
                    cell.accessoryView?.layer.cornerRadius = 17
                    cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
            }

            +++ Section("Basic Info")
            <<< NameRow(){ row in
                row.title = "Name"
                row.placeholder = "Enter your full name"
            }
            <<< ActionSheetRow<String>() {
                $0.title = "Gender"
                $0.selectorTitle = "Gender"
                $0.options = ["Male","Female","Other"]
                $0.value = "Male"
            }
            <<< DateRow(){
                $0.title = "Birthday"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            
            +++ Section("")
            <<< EmailRow(){
                $0.title = "Email"
                $0.placeholder = "Enter your email"
        }
    }
}

