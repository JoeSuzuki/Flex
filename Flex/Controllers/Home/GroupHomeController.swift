//
//  GroupHomeController.swift
//  Flex
//
//  Created by Joe Suzuki on 12/30/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit
import Firebase

class GroupHomeController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let headerId = "headerId"
    let nameArray = ["Joe Suzuki", "Steve Jobs", "Elon Musk"]
    let companeyArray = ["Suzuki", "Apple", "SpaceX"]
    var group = [Group]()
    var db: Firestore!

    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .mainBlue
        collectionView?.register(GroupCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(GroupHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        setupNavigationBarItems()
        
        db = Firestore.firestore()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GroupCell
        for x in 0..<nameArray.count{
            if indexPath.row == x {
                cell.groupNameLabel.text = companeyArray[x]
                cell.groupCreaterNameLabel.text = nameArray[x]
            }
        }
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
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        let groupScheduleViewController = GroupScheduleViewController(collectionViewLayout: UICollectionViewFlowLayout())
        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)
    }

}
