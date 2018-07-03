//
//  ScheduleHomeController.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

class ScheduleHomeController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let headerId = "headerId"
    let timeDict = ["12:00 AM", "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM", "8:00 PM", "9:00 PM", "10:00 PM", "11:00 PM", "12:00 PM", "1:00 AM", "2:00 AM", "3:00 AM", "4:00 AM", "5:00 AM", "6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM","10:00 AM", "11:00 AM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .white
        collectionView?.register(ScheduleCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView?.register(ScheduleHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        collectionView!.collectionViewLayout = layout

        setupNavigationBarItems()
//        GroupService().setupCategories("technolog")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ScheduleCell
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 1
//        cell.layer.cornerRadius = 10
        for x in timeDict{
            if timeDict[indexPath.row] == x {
                cell.timeTitle.text = x
//                let currentDate = NSDate()
//                print(currentDate.hour)
            }
        }
        cell.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width , height: 125)
    }
    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: headerId, for: indexPath)
//        header.backgroundColor = .white
//        return header
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 33)
//    }
}
