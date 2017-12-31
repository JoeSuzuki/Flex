//
//  GroupHeader.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let segmentedView: UISegmentedControl = {
        let items = ["MY GROUPS", "JOINED"]
        let segment = UISegmentedControl(items: items)
        segment.selectedSegmentIndex = 0
        segment.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        segment.tintColor = .white
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    func setupViews() {
        addSubview(segmentedView)
        
        segmentedView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        segmentedView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        segmentedView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        segmentedView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
