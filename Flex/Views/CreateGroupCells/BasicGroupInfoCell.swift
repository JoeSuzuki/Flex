//
//  BasicGroupInfoCell.swift
//  Flex
//
//  Created by Joe Suzuki on 7/8/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class BasicGroupInfoCell: UICollectionViewCell {
    // Name
    // Desccription
    // Availbility
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = .white //UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let descriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = .white //UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let availbilityView: UIView = {
        let view = UIView()
        view.backgroundColor = .white //UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let availbilityLabel: UILabel = {
        let label = UILabel()
        label.text = "Availbility"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let nameText: UITextField = {
        let text = UITextField()
        text.placeholder = "Enter name"
//        text.font = UIFont.boldSystemFont(ofSize: 17)
        text.textColor = .black
        text.backgroundColor = .white
        text.semanticContentAttribute = .forceRightToLeft
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    let descriptionText: UITextField = {
        let text = UITextField()
        text.placeholder = "Enter description"
        text.textColor = .black
        text.backgroundColor = .white
        text.semanticContentAttribute = .forceRightToLeft
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    let availbilityText: UITextField = {
        let text = UITextField()
        text.placeholder = "Enter availbility"
        text.textColor = .black
        text.backgroundColor = .white
        text.semanticContentAttribute = .forceRightToLeft
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setupViews() {
        let width = layer.frame.width
        let height = layer.frame.height/3
        backgroundColor = .backgroundGrey
        
        addSubview(nameView)
        addSubview(descriptionView)
        addSubview(availbilityView)
        
        addSubview(nameText)
        addSubview(descriptionText)
        addSubview(availbilityText)
        
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(availbilityLabel)

        nameView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: descriptionView.topAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height))
        nameLabel.anchor(top: nameView.topAnchor, leading: nameView.leadingAnchor, bottom: nameView.bottomAnchor, trailing: nameText.leadingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        nameText.anchor(top: nameView.topAnchor, leading: nameLabel.trailingAnchor, bottom: nameView.bottomAnchor, trailing: nameView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        descriptionView.anchor(top: nameView.bottomAnchor, leading: self.leadingAnchor, bottom: availbilityView.topAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height))
        descriptionLabel.anchor(top: descriptionView.topAnchor, leading: descriptionView.leadingAnchor, bottom: descriptionView.bottomAnchor, trailing: descriptionText.leadingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        descriptionText.anchor(top: descriptionView.topAnchor, leading: descriptionLabel.trailingAnchor, bottom: descriptionView.bottomAnchor, trailing: descriptionView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        availbilityView.anchor(top: descriptionView.bottomAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height))
        availbilityLabel.anchor(top: availbilityView.topAnchor, leading: availbilityView.leadingAnchor, bottom: availbilityView.bottomAnchor, trailing: availbilityText.leadingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        availbilityText.anchor(top: availbilityView.topAnchor, leading: availbilityLabel.trailingAnchor, bottom: availbilityView.bottomAnchor, trailing: availbilityView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
