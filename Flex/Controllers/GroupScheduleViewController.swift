//
//  GroupScheduleViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/3/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class GroupScheduleViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .mainBlue
        collectionView?.register(GroupScheduleCell.self, forCellWithReuseIdentifier: cellId)
        
        setupNavigationBarItems()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GroupScheduleCell
        cell.availableButton.tag = indexPath.row
        cell.availableButton.addTarget(self, action: #selector(buttonsAction(sender:)), for: .touchUpInside)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width / 6)
    }
}

