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
        view.backgroundColor = .backgroundGrey

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
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: basicId, for: indexPath) as! BasicGroupInfoCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: locationId, for: indexPath) as! GroupLocationCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profilePictureId, for: indexPath) as! GroupProfilePictureCell
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: extraDetailId, for: indexPath) as! GroupExtraDetailCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: extraDetailId, for: indexPath) as! GroupExtraDetailCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = view.layer.frame.height

        switch indexPath.row {
        case 0:
            return CGSize(width: view.frame.width, height: height/3)
        case 1:
            return CGSize(width: view.frame.width, height: 400)
        case 2:
            return CGSize(width: view.frame.width, height: 80)
        case 3:
            return CGSize(width: view.frame.width, height: 120)
        default:
            return CGSize(width: view.frame.width, height: 120)
        }
    }
}
