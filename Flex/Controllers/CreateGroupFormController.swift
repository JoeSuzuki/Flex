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
    let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .backgroundGrey
        collectionView?.register(GroupCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(GroupHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        setupNavigationBarItems()
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GroupCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 245)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: headerId, for: indexPath) as! GroupHeaderCell
        header.backgroundColor = .white
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
}
