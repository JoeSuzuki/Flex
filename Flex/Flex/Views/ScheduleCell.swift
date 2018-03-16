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
    let scheduleView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    let titleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let timeTitle: UILabel = {
        let label = UILabel()
        label.text = "12:00 AM"
        label.textColor = UIColor.main.mainBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let activityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Dr. Dentist"
        label.textColor = UIColor.main.mainBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let activityTimeLabel: UILabel = {
        let label = UILabel()
//        let time: [String] = ["12:00 AM", "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM", "8:00 PM", "9:00 PM", "10:00 PM", "11:00 PM", "12:00 PM", "1:00 AM", "2:00 AM", "3:00 AM", "4:00 AM", "5:00 AM", "6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM","10:00 AM", "11:00 AM"
//
        label.text = "12:00 AM"//"\(time[0])"
        label.textColor = UIColor.main.mainBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    fileprivate func setupLabels() {
        
        let activityNameContainerView = UIView()
        let activityTimeButtonContainerView = UIView()
//        activityTimeButtonContainerView.backgroundColor = UIColor.main.backgroundGrey
        
        let labelsStackView = UIStackView(arrangedSubviews: [activityTimeButtonContainerView, activityNameContainerView])
        labelsStackView.axis = .horizontal
        labelsStackView.distribution = .fillEqually
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(labelsStackView)
        labelsStackView.topAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        labelsStackView.bottomAnchor.constraint(equalTo: scheduleView.bottomAnchor).isActive = true
        labelsStackView.leftAnchor.constraint(equalTo: scheduleView.leftAnchor).isActive = true
        labelsStackView.rightAnchor.constraint(equalTo: scheduleView.rightAnchor).isActive = true
        
        addSubview(activityNameLabel)
        addSubview(activityTimeLabel)
        
        activityNameLabel.topAnchor.constraint(equalTo: activityNameContainerView.topAnchor).isActive = true
        activityNameLabel.bottomAnchor.constraint(equalTo: activityNameContainerView.bottomAnchor).isActive = true
        activityNameLabel.leftAnchor.constraint(equalTo: activityNameContainerView.leftAnchor).isActive = true
        activityNameLabel.rightAnchor.constraint(equalTo: activityNameContainerView.rightAnchor).isActive = true
        activityNameLabel.textAlignment = .center
        
        activityTimeLabel.topAnchor.constraint(equalTo: activityTimeButtonContainerView.topAnchor).isActive = true
        activityTimeLabel.bottomAnchor.constraint(equalTo: activityTimeButtonContainerView.bottomAnchor).isActive = true
        activityTimeLabel.leftAnchor.constraint(equalTo: activityTimeButtonContainerView.leftAnchor).isActive = true
        activityTimeLabel.rightAnchor.constraint(equalTo: activityTimeButtonContainerView.rightAnchor).isActive = true
        activityTimeLabel.textAlignment = .center
        
    }

    func setupViews() {
        backgroundColor = .white
        
        addSubview(scheduleView)
        addSubview(titleView)
        addSubview(timeTitle)
        
        scheduleView.topAnchor.constraint(equalTo: titleView.bottomAnchor).isActive = true
        scheduleView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scheduleView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        scheduleView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    
        titleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        titleView.bottomAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        titleView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        titleView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        titleView.heightAnchor.constraint(equalToConstant: 15.0).isActive = true

        timeTitle.topAnchor.constraint(equalTo: titleView.topAnchor).isActive = true
        timeTitle.bottomAnchor.constraint(equalTo: titleView.bottomAnchor).isActive = true
        timeTitle.leftAnchor.constraint(equalTo: titleView.leftAnchor).isActive = true
        timeTitle.rightAnchor.constraint(equalTo: titleView.rightAnchor).isActive = true
        timeTitle.textAlignment = .center
        
        setupLabels()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


