//
//  GroupDescriptionController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/13/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class GroupDescriptionController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let cellIds = "headerIds"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .backgroundGrey
        collectionView?.register(DescriptionCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(DescriptionHeaderCell.self, forCellWithReuseIdentifier: cellIds)
        
        setupNavigationBarItems()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIds, for: indexPath) as! DescriptionHeaderCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! DescriptionCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! DescriptionCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0:
            return CGSize(width: view.frame.width, height: view.frame.height * 4 / 11)
        default:
            return CGSize(width: view.frame.width, height: 245)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        let groupScheduleViewController = GroupScheduleViewController(collectionViewLayout: UICollectionViewFlowLayout())
        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)
    }
}
