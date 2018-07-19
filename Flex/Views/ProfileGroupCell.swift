//
//  ProfileGroupCell.swift
//  Flex
//
//  Created by Joe Suzuki on 7/18/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ProfileGroupCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        backgroundColor = .white
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
