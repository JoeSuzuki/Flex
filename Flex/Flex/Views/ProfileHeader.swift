//
//  ProfileHeader.swift
//  Flex
//
//  Created by Joe Suzuki on 5/1/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ProfileHeaderCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let textContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Clock")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    let fullnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Joe Suzuki"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        addSubview(profileImageView)
        
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

