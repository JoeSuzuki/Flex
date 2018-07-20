//
//  EditDescriptionController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class EditDescriptionController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let cellId = "cellId"
    let viewId = "viewId"
    let cellIds = "headerIds"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupNavigationBarItems()
    }
    
    func setupViews() {
        view.addSubview(basicGroupInfoCell)
        view.addSubview(groupLocationCell)
        
        basicGroupInfoCell.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: groupLocationCell.topAnchor, trailing: view.trailingAnchor)
        groupLocationCell.anchor(top: basicGroupInfoCell.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
}
