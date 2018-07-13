//
//  DescriptionCell.swift
//  Flex
//
//  Created by Joe Suzuki on 7/13/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class DescriptionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .red
    }
    
    
    func setupViews() {
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

