//
//  CreateGroupFormController.swift
//  Flex
//
//  Created by Joe Suzuki on 6/2/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class CreateGroupFormController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let cellId = "cellId"
    let cellIds = "cellIds"
    let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .backgroundGrey
        collectionView?.register(GroupCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(GroupHeaderCell.self, forCellWithReuseIdentifier: cellIds)

        setupNavigationBarItems()
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row % 2 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIds, for: indexPath) as! GroupHeaderCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GroupCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 245)
    }
}
