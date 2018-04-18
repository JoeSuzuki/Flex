//
//  HandleRegisterViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 4/16/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Eureka

class HandleRegisterViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Basic Info")
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

