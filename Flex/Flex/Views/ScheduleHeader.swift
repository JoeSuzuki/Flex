//
//  ScheduleHeader.swift
//  Flex
//
//  Created by Joe Suzuki on 3/11/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ScheduleHeader: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let segmentedView: UIView = {
        let items = ["MY GROUPS", "JOINED"]
        let view = UIView()
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let activityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Activity"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let activityTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Time"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() {
//        addSubview(segmentedView)
        
//        segmentedView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        segmentedView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        segmentedView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        segmentedView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        setupLabels()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabels() {
        
        let activityNameContainerView = UIView()
        activityNameContainerView.backgroundColor = .blue
        let activityTimeButtonContainerView = UIView()
        let likeButtonContainerView = UIView()
        
        let labelsStackView = UIStackView(arrangedSubviews: [activityNameContainerView, activityTimeButtonContainerView])
        labelsStackView.axis = .horizontal
        labelsStackView.distribution = .fillEqually
        
        addSubview(labelsStackView)
        labelsStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelsStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        labelsStackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        labelsStackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        addSubview(activityNameLabel)
        addSubview(activityTimeLabel)
        
        activityNameLabel.topAnchor.constraint(equalTo: activityNameContainerView.topAnchor).isActive = true
        activityNameLabel.bottomAnchor.constraint(equalTo: activityNameContainerView.bottomAnchor).isActive = true
        activityNameLabel.leftAnchor.constraint(equalTo: activityNameContainerView.leftAnchor).isActive = true
        activityNameLabel.rightAnchor.constraint(equalTo: activityNameContainerView.rightAnchor).isActive = true
       
        activityTimeLabel.topAnchor.constraint(equalTo: activityTimeButtonContainerView.topAnchor).isActive = true
        activityTimeLabel.bottomAnchor.constraint(equalTo: activityTimeButtonContainerView.bottomAnchor).isActive = true
        activityTimeLabel.leftAnchor.constraint(equalTo: activityTimeButtonContainerView.leftAnchor).isActive = true
        activityTimeLabel.rightAnchor.constraint(equalTo: activityTimeButtonContainerView.rightAnchor).isActive = true

    }
}

