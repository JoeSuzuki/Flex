//
//  ScheduleCell.swift
//  Flex
//
//  Created by Joe Suzuki on 12/31/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import UIKit

class ScheduleCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let timeNameView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let timeView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scheduleView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scheduleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Dr. Andy Office"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let scheduleTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "5:00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let seeMoreButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.main.mainBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("See more", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(UIColor.main.mainBlue, for: .normal)
        button.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return button
    }()
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.main.mainBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    func setupViews() {
        backgroundColor = .white
        
        addSubview(timeNameView)
        addSubview(timeView)
        addSubview(nameView)
        addSubview(scheduleView)
        addSubview(separatorView)
        
        timeNameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        timeNameView.bottomAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        timeNameView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        timeNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        timeNameView.heightAnchor.constraint(equalToConstant: 70).isActive = true

        nameView.topAnchor.constraint(equalTo: timeNameView.topAnchor).isActive = true
        nameView.bottomAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
        nameView.leftAnchor.constraint(equalTo: timeNameView.leftAnchor).isActive = true
        nameView.rightAnchor.constraint(equalTo: timeView.leftAnchor).isActive = true
        nameView.widthAnchor.constraint(equalToConstant: timeNameView.frame.size.width / 2).isActive = true
        
        timeView.topAnchor.constraint(equalTo: timeNameView.topAnchor).isActive = true
        timeView.bottomAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
        timeView.leftAnchor.constraint(equalTo: nameView.rightAnchor).isActive = true
        timeView.rightAnchor.constraint(equalTo: timeNameView.rightAnchor).isActive = true
        timeView.widthAnchor.constraint(equalToConstant: timeNameView.frame.size.width / 2).isActive = true

        scheduleView.topAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
        scheduleView.bottomAnchor.constraint(equalTo: separatorView.topAnchor).isActive = true
        scheduleView.leftAnchor.constraint(equalTo: separatorView.leftAnchor).isActive = true
        scheduleView.rightAnchor.constraint(equalTo: separatorView.rightAnchor).isActive = true
        
        separatorView.topAnchor.constraint(equalTo: scheduleView.bottomAnchor).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        separatorView.heightAnchor.constraint(equalToConstant: 10).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


