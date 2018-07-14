//
//  DescriptionHeader.swift
//  Flex
//
//  Created by Joe Suzuki on 7/13/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class DescriptionHeaderCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let groupImageView: UIImageView = {
        let groupView = UIImageView()
//                groupView.image = #imageLiteral(resourceName: "search")
        let url = URL(string: "https://media.gettyimages.com/photos/food-court-blurred-picture-id532028378?b=1&k=6&m=532028378&s=612x612&w=0&h=8RqP803cLYHHYv0UiLj8dyl3sAbpC6vfbGqhbjAbVyU=")
        groupView.kf.setImage(with: url)
        groupView.layer.cornerRadius = 5
        groupView.contentMode = .scaleAspectFill
        groupView.clipsToBounds = true
        groupView.translatesAutoresizingMaskIntoConstraints = false
        return groupView
    }()
    let descriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let openTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "8:00 AM - 5:00 PM"
//        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "New York, NY"
//        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let nameStarView: UIView = {
        let view = UIView()
//        view.backgroundColor = UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Doctor"
//        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.font = label.font.withSize(20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let starButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.mainBlue, for: .normal)
        button.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return button
    }()
    let messageButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.mainBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Message", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.mainBlue, for: .normal)
//        button.setImage(#imageLiteral(resourceName: "search"), for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return button
    }()

    func setupViews() {
        let width = layer.frame.width
        let height = layer.frame.height / 11
        
        addSubview(groupImageView)
        addSubview(descriptionView)
        addSubview(openTimeLabel)
        addSubview(locationLabel)
        addSubview(nameStarView)
        addSubview(nameLabel)
        addSubview(messageButton)

        groupImageView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: descriptionView.topAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height * 9))
        descriptionView.anchor(top: groupImageView.bottomAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height * 2))
        openTimeLabel.anchor(top: descriptionView.topAnchor, leading: descriptionView.leadingAnchor, bottom: locationLabel.topAnchor, trailing: descriptionView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        locationLabel.anchor(top: openTimeLabel.bottomAnchor, leading: descriptionView.leadingAnchor, bottom: descriptionView.bottomAnchor, trailing: descriptionView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        nameStarView.anchor(top: groupImageView.topAnchor, leading: groupImageView.leadingAnchor, bottom: groupImageView.bottomAnchor, trailing: groupImageView.trailingAnchor, padding: .init(top: height * 8, left: 0, bottom: 0, right: 0))
        nameLabel.anchor(top: nameStarView.topAnchor, leading: nameStarView.leadingAnchor, bottom: nameStarView.bottomAnchor, trailing: messageButton.leadingAnchor, padding: .init(top: 0, left: 4, bottom: 8, right: 0))
        messageButton.anchor(top: nameStarView.topAnchor, leading: nameLabel.trailingAnchor, bottom: nameStarView.bottomAnchor, trailing: nameStarView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 8, right: 4), size: .init(width: width / 4, height: height))

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
