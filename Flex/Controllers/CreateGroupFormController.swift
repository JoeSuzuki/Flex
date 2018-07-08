//
//  CreateGroupFormController.swift
//  Flex
//
//  Created by Joe Suzuki on 6/2/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class CreateGroupFormController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let basicId = "basicId"
    let locationId = "locationId"
    let profilePictureId = "profilePictureId"
    let extraDetailId = "extraDetailId"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .backgroundGrey
        
        collectionView?.register(BasicGroupInfoCell.self, forCellWithReuseIdentifier: basicId)
        collectionView?.register(GroupLocationCell.self, forCellWithReuseIdentifier: locationId)
        collectionView?.register(GroupProfilePictureCell.self, forCellWithReuseIdentifier: profilePictureId)
        collectionView?.register(GroupExtraDetailCell.self, forCellWithReuseIdentifier: extraDetailId)

        setupNavigationBarItems()
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: basicId, for: indexPath) as! BasicGroupInfoCell
            return cell
        } else if indexPath.row == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: locationId, for: indexPath) as! GroupLocationCell
            return cell
        } else if indexPath.row == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profilePictureId, for: indexPath) as! GroupProfilePictureCell
            return cell
        } else if indexPath.row == 3{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: extraDetailId, for: indexPath) as! GroupExtraDetailCell
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: extraDetailId, for: indexPath) as! GroupExtraDetailCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: view.frame.width, height: 10)
        } else if indexPath.row == 1{
            return CGSize(width: view.frame.width, height: 40)
        } else if indexPath.row == 2{
            return CGSize(width: view.frame.width, height: 80)
        } else if indexPath.row == 3{
            return CGSize(width: view.frame.width, height: 120)
        }
        return CGSize(width: view.frame.width, height: 245)
    }
}
