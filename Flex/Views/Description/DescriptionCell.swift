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
        backgroundColor = .white
    }
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        //                label.font = UIFont.boldSystemFont(ofSize: 25)
        //        label.font = label.font.withSize(20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"
        //                label.font = UIFont.boldSystemFont(ofSize: 25)
        //        label.font = label.font.withSize(20)
        textView.isEditable = false
        textView.isSelectable = false
        textView.textColor = .black
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    func setupViews() {
        addSubview(descriptionLabel)
        addSubview(descriptionTextView)

        descriptionLabel.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: descriptionTextView.topAnchor, trailing: self.trailingAnchor, padding: .init(top: 4, left: 4, bottom: 0, right: 0))
        
        descriptionTextView.anchor(top: descriptionLabel.bottomAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
