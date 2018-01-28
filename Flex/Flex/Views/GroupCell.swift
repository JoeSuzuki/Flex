//
//  GroupCell.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit
import Kingfisher

class GroupCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let groupImageView: UIImageView = {
        let groupView = UIImageView()
//        groupView.image = #imageLiteral(resourceName: "search")
        let url = URL(string: "https://avatars1.githubusercontent.com/u/23642941?s=460&v=4")
        groupView.kf.setImage(with: url)
        groupView.layer.cornerRadius = 5
        groupView.contentMode = .scaleAspectFit
        groupView.clipsToBounds = true
        groupView.translatesAutoresizingMaskIntoConstraints = false
        return groupView
    }()
    
    let lightBlueView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let groupNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Dr. Andy Office"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let groupCreaterNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Dr. Andy"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        backgroundColor = .white
        
        addSubview(groupImageView)
//        addSubview(lightBlueView)
        addSubview(detailsView)
        addSubview(groupNameLabel)
        addSubview(groupCreaterNameLabel)
        
        groupImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        groupImageView.bottomAnchor.constraint(equalTo: detailsView.topAnchor).isActive = true
        groupImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        groupImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
//        lightBlueView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        lightBlueView.bottomAnchor.constraint(equalTo: detailsView.topAnchor).isActive = true
//        lightBlueView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        lightBlueView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        lightBlueView.heightAnchor.constraint(equalToConstant: 120).isActive = true
//      lightBlueView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        detailsView.topAnchor.constraint(equalTo: groupImageView.bottomAnchor).isActive = true
        detailsView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        detailsView.leftAnchor.constraint(equalTo: groupImageView.leftAnchor).isActive = true
        detailsView.rightAnchor.constraint(equalTo: groupImageView.rightAnchor).isActive = true
        
        groupNameLabel.topAnchor.constraint(equalTo: detailsView.topAnchor).isActive = true
        groupNameLabel.bottomAnchor.constraint(equalTo: groupCreaterNameLabel.topAnchor).isActive = true
        groupNameLabel.leftAnchor.constraint(equalTo: detailsView.leftAnchor, constant: 4).isActive = true
        groupNameLabel.rightAnchor.constraint(equalTo: detailsView.rightAnchor).isActive = true
        
        groupCreaterNameLabel.topAnchor.constraint(equalTo: groupNameLabel.bottomAnchor).isActive = true
        groupCreaterNameLabel.bottomAnchor.constraint(equalTo: detailsView.bottomAnchor).isActive = true
        groupCreaterNameLabel.leftAnchor.constraint(equalTo: detailsView.leftAnchor, constant: 4).isActive = true
        groupCreaterNameLabel.rightAnchor.constraint(equalTo: detailsView.rightAnchor).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

