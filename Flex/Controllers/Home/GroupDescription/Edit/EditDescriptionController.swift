//
//  EditDescriptionController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/15/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class EditDescriptionController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let cellId = "cellId"
    let viewId = "viewId"
    let cellIds = "headerIds"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionView?.backgroundColor = .backgroundGrey
        collectionView?.register(DescriptionCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(DescriptionHeaderCell.self, forCellWithReuseIdentifier: cellIds)
        collectionView?.register(DescriptionViewCell.self, forCellWithReuseIdentifier: viewId)
        
        setupNavigationBarItems()
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIds, for: indexPath) as! DescriptionHeaderCell
            cell.messageButton.tag = indexPath.row
            cell.messageButton.addTarget(self, action: #selector(messageAction(sender:)), for: .touchUpInside)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewId, for: indexPath) as! DescriptionViewCell
            cell.viewScheduleButton.tag = indexPath.row
            cell.viewScheduleButton.addTarget(self, action: #selector(buttonsAction(sender:)), for: .touchUpInside)
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
        case 1:
            return CGSize(width: view.frame.width, height: view.frame.height / 14)
        default:
            return CGSize(width: view.frame.width, height: 245)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
    }
    
    @objc func buttonsAction(sender: UIButton) {
        let groupScheduleViewController = GroupScheduleViewController(collectionViewLayout: UICollectionViewFlowLayout())
        present(UINavigationController(rootViewController: groupScheduleViewController), animated: true, completion: nil)
    }
    @objc func messageAction(sender: UIButton) {
        print("Message sent")
    }
}
