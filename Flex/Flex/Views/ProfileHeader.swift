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
        imageView.image = UIImage(named: "Flex")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .blue
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
        addSubview(textContainerView)
        addSubview(fullnameView)
        addSubview(fullnameLabel)
        addSubview(text2View)
        addSubview(text2Label)
        addSubview(text3View)
        addSubview(text3Label)

        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        profileImageView.rightAnchor.constraint(equalTo: textContainerView.leftAnchor, constant: -8).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true
        profileImageView.layer.cornerRadius = frame.size.width / 6
        profileImageView.layer.borderColor = UIColor.white.cgColor
        
        textContainerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        textContainerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        textContainerView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor).isActive = true
        textContainerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        textContainerView.heightAnchor.constraint(equalToConstant: self.frame.width / 3).isActive = true

        let oneThirdHeight = self.frame.width / 9
//            .frame.width / 3
        print(oneThirdHeight)
        print(oneThirdHeight)
        print(oneThirdHeight)
        print(oneThirdHeight)
        print(oneThirdHeight)
        print(oneThirdHeight)
       
        //
        fullnameView.topAnchor.constraint(equalTo: textContainerView.topAnchor).isActive = true
        fullnameView.leftAnchor.constraint(equalTo: textContainerView.leftAnchor).isActive = true
        fullnameView.rightAnchor.constraint(equalTo: textContainerView.rightAnchor).isActive = true
        fullnameView.bottomAnchor.constraint(equalTo: text2View.topAnchor).isActive = true
        fullnameView.heightAnchor.constraint(equalToConstant: oneThirdHeight).isActive = true

        fullnameLabel.topAnchor.constraint(equalTo: fullnameView.topAnchor).isActive = true
        fullnameLabel.leftAnchor.constraint(equalTo: fullnameView.leftAnchor).isActive = true
        fullnameLabel.rightAnchor.constraint(equalTo: fullnameView.rightAnchor).isActive = true
        fullnameLabel.bottomAnchor.constraint(equalTo: fullnameView.bottomAnchor).isActive = true

        //
        text2View.topAnchor.constraint(equalTo: fullnameView.bottomAnchor).isActive = true
        text2View.leftAnchor.constraint(equalTo: textContainerView.leftAnchor).isActive = true
        text2View.rightAnchor.constraint(equalTo: textContainerView.rightAnchor).isActive = true
        text2View.bottomAnchor.constraint(equalTo: text3View.topAnchor).isActive = true
        text2View.heightAnchor.constraint(equalToConstant: oneThirdHeight).isActive = true

        text2Label.topAnchor.constraint(equalTo: text2View.topAnchor).isActive = true
        text2Label.leftAnchor.constraint(equalTo: text2View.leftAnchor).isActive = true
        text2Label.rightAnchor.constraint(equalTo: text2View.rightAnchor).isActive = true
        text2Label.bottomAnchor.constraint(equalTo: text2View.bottomAnchor).isActive = true

        //
        text3View.topAnchor.constraint(equalTo: text2View.bottomAnchor).isActive = true
        text3View.bottomAnchor.constraint(equalTo: textContainerView.bottomAnchor).isActive = true
        text3View.leftAnchor.constraint(equalTo: textContainerView.leftAnchor).isActive = true
        text3View.rightAnchor.constraint(equalTo: textContainerView.rightAnchor).isActive = true
        text3View.heightAnchor.constraint(equalToConstant: oneThirdHeight).isActive = true

        text3Label.topAnchor.constraint(equalTo: text3View.topAnchor).isActive = true
        text3Label.leftAnchor.constraint(equalTo: text3View.leftAnchor).isActive = true
        text3Label.rightAnchor.constraint(equalTo: text3View.rightAnchor).isActive = true
        text3Label.bottomAnchor.constraint(equalTo: text3View.bottomAnchor).isActive = true

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

