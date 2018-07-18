//
//  EditDescriptionController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class EditDescriptionController: UIViewController {
    let basicGroupInfoCell: UIView = {
        let views = BasicGroupInfoCell()
        return views
    }()
    let groupLocationCell: UIView = {
        let views = GroupLocationCell()
        return views
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(basicGroupInfoCell)
        view.addSubview(groupLocationCell)
        basicGroupInfoCell.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: groupLocationCell.topAnchor, trailing: view.trailingAnchor)
        groupLocationCell.anchor(top: basicGroupInfoCell.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
}
