//
//  EditDescriptionController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class EditDescriptionController: UIViewController {
    let viewId = "viewId"
 
    let views: UIView = {
        let views = BasicGroupInfoCell()
        return views
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(views)
        views.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
}
