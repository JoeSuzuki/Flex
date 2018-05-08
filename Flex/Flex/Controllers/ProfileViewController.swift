//
//  ProfileViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 3/3/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
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
        
        collectionView?.backgroundColor = UIColor.main.mainBlue
        collectionView?.register(ProfileCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(ProfileHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        setupNavigationBarItems()
        
        db = Firestore.firestore()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProfileCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 245)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: headerId, for: indexPath) as! ProfileHeaderCell
        header.backgroundColor = .white //UIColor(r: 90, g: 200, b: 250, a: 0.1)
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        //        return CGSize(width: view.frame.width, height: view.frame.width / 3 + 16)
            return CGSize(width: view.frame.width, height: view.frame.width)
    }
}

