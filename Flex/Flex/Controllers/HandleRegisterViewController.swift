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
        form +++ Section("Section1")
            <<< TextRow(){ row in
                row.title = "Text Row"
                row.placeholder = "Enter text here"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
    }
}

