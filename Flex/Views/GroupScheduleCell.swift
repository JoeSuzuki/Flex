//
//  GroupSchedule.swift
//  Flex
//
//  Created by Joe Suzuki on 7/3/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class GroupScheduleCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let scheduleView: UIView = {
        let view = UIView()
        //        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let availableButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.backgroundColor = .green
        button.layer.borderColor = UIColor.mainBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("See more", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.mainBlue, for: .normal)
        button.isUserInteractionEnabled = true
//        button.isEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let activityTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "12:00"
        label.textColor = .mainBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    fileprivate func setupLabels() {
        
        let availableButtonContainerView = UIView()
        let activityTimeButtonContainerView = UIView()
        activityTimeButtonContainerView.backgroundColor = .backgroundGrey
        
        let labelsStackView = UIStackView(arrangedSubviews: [activityTimeButtonContainerView, availableButtonContainerView])
        labelsStackView.axis = .horizontal
        labelsStackView.distribution = .fillEqually
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(labelsStackView)
        labelsStackView.topAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        labelsStackView.bottomAnchor.constraint(equalTo: scheduleView.bottomAnchor).isActive = true
        labelsStackView.leftAnchor.constraint(equalTo: scheduleView.leftAnchor).isActive = true
        labelsStackView.rightAnchor.constraint(equalTo: scheduleView.rightAnchor).isActive = true
        
        addSubview(availableButton)
        addSubview(activityTimeLabel)
        
        availableButton.topAnchor.constraint(equalTo: availableButtonContainerView.topAnchor).isActive = true
        availableButton.bottomAnchor.constraint(equalTo: availableButtonContainerView.bottomAnchor).isActive = true
        availableButton.leftAnchor.constraint(equalTo: availableButtonContainerView.leftAnchor).isActive = true
        availableButton.rightAnchor.constraint(equalTo: availableButtonContainerView.rightAnchor).isActive = true
        
        activityTimeLabel.topAnchor.constraint(equalTo: activityTimeButtonContainerView.topAnchor).isActive = true
        activityTimeLabel.bottomAnchor.constraint(equalTo: activityTimeButtonContainerView.bottomAnchor).isActive = true
        activityTimeLabel.leftAnchor.constraint(equalTo: activityTimeButtonContainerView.leftAnchor).isActive = true
        activityTimeLabel.rightAnchor.constraint(equalTo: activityTimeButtonContainerView.rightAnchor).isActive = true
        activityTimeLabel.textAlignment = .center
    }
    
    func setupViews() {
        backgroundColor = .white
        
        addSubview(scheduleView)
        
        scheduleView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scheduleView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scheduleView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        scheduleView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        setupLabels()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



