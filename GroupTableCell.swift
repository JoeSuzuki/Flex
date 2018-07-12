//
//  GroupTableCell.swift
//  Flex
//
//  Created by Joe Suzuki on 7/11/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class CustomTableCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
