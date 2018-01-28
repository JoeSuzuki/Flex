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
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let headerNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let headerTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Time"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let scheduleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
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
//        addSubview(timeView)
//        addSubview(nameView)
        addSubview(scheduleView)
        addSubview(headerNameLabel)
        addSubview(headerTimeLabel)
        addSubview(separatorView)
        
        let stackView = UIStackView(arrangedSubviews: [headerTimeLabel, headerNameLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        timeNameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        timeNameView.bottomAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        timeNameView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        timeNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        timeNameView.heightAnchor.constraint(equalToConstant: 70).isActive = true

//        nameView.topAnchor.constraint(equalTo: timeNameView.topAnchor).isActive = true
//        nameView.bottomAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
//        nameView.leftAnchor.constraint(equalTo: timeNameView.leftAnchor).isActive = true
//        nameView.rightAnchor.constraint(equalTo: timeView.leftAnchor).isActive = true
//
//        timeView.topAnchor.constraint(equalTo: timeNameView.topAnchor).isActive = true
//        timeView.bottomAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
//        timeView.leftAnchor.constraint(equalTo: nameView.leftAnchor).isActive = true
//        timeView.rightAnchor.constraint(equalTo: timeNameView.rightAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: timeNameView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: timeNameView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: timeNameView.rightAnchor).isActive = true

        headerNameLabel.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
        headerNameLabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        headerNameLabel.leftAnchor.constraint(equalTo: stackView.leftAnchor).isActive = true
        headerNameLabel.rightAnchor.constraint(equalTo: headerTimeLabel.leftAnchor).isActive = true
//        headerNameLabel.widthAnchor.constraint(equalTo: stackView.frame.width, multiplier: 0.5).isActive = true
        
        headerTimeLabel.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
        headerTimeLabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        headerTimeLabel.leftAnchor.constraint(equalTo: headerNameLabel.rightAnchor).isActive = true
        headerTimeLabel.rightAnchor.constraint(equalTo: stackView.rightAnchor).isActive = true

        scheduleView.topAnchor.constraint(equalTo: timeNameView.bottomAnchor).isActive = true
        scheduleView.bottomAnchor.constraint(equalTo: separatorView.topAnchor).isActive = true
        scheduleView.leftAnchor.constraint(equalTo: separatorView.leftAnchor).isActive = true
        scheduleView.rightAnchor.constraint(equalTo: separatorView.rightAnchor).isActive = true
        
        separatorView.topAnchor.constraint(equalTo: scheduleView.bottomAnchor).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 10).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


