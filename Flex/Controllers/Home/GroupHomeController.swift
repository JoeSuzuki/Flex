//
//  GroupHomeController.swift
//  Flex
//
//  Created by Joe Suzuki on 12/30/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

class GroupHomeController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let headerId = "headerId"
    let nameArray = ["Elon Musk", "Tim Cook", "Bill Gates"]
    let companeyArray = ["SpaceX", "Apple", "Microsoft"]

    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.title = "Jo"
        
        collectionView?.backgroundColor = .backgroundGrey
        collectionView?.register(GroupCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(GroupHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
//        setupNavigationBarItems()
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
        let groupScheduleViewController = GroupDescriptionController(collectionViewLayout: UICollectionViewFlowLayout())
        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)
    }

}
