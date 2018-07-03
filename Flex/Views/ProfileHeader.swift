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
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sim2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.mainBlue.cgColor
        imageView.layer.borderWidth = 2
        return imageView
    }()
    let fullnameView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let fullnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Joe Suzuki"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let text2View: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let text2Label: UILabel = {
        let label = UILabel()
        label.text = "joe"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let text3View: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let text3Label: UILabel = {
        let label = UILabel()
        label.text = "sz"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() {
        addSubview(profileImageView)
//        addSubview(textContainerView)
//        addSubview(fullnameView)
//        addSubview(fullnameLabel)
//        addSubview(text2View)
//        addSubview(text2Label)
//        addSubview(text3View)
//        addSubview(text3Label)

        profileImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor)
        profileImageView.heightAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true
        profileImageView.layer.cornerRadius = frame.size.width / 6
        

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

