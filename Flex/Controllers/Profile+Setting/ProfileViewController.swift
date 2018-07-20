//
//  ProfileViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 3/3/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ProfileViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let cellId = "cellId"
    let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .mainBlue
        collectionView?.register(ProfileGroupCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(ProfileHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        setupNavigationBarItems()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        collectionView!.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProfileHeaderCell
        return cell
    }
}
