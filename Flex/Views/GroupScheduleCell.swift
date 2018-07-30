//
//  GroupSchedule.swift
//  Flex
//
//  Created by Joe Suzuki on 7/3/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Kingfisher

class GroupScheduleCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let scheduleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let availableButton: UIButton = {
        let button = UIButton()
        //        button.layer.cornerRadius = 10
        button.backgroundColor = .clear
        button.layer.borderColor = UIColor.backgroundGrey.cgColor
        //        button.layer.borderWidth = 1
        button.setTitle("Available", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.mainLightBlue, for: .normal)
        button.isUserInteractionEnabled = true
        button.isEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let infoButton: UIButton = {
        let button = UIButton()
//        button.backgroundColor = .red
//        button.setTitle("Available", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        button.setTitleColor(.white, for: .normal)
        button.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        button.isUserInteractionEnabled = true
        button.isEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let statusImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "search")
//        let url = URL(string: "https://media.gettyimages.com/photos/food-court-blurred-picture-id532028378?b=1&k=6&m=532028378&s=612x612&w=0&h=8RqP803cLYHHYv0UiLj8dyl3sAbpC6vfbGqhbjAbVyU=")
//        image.kf.setImage(with: url)
        image.layer.cornerRadius = 5
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let activityTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "12:00"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .mainLightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate func setupLabels() {
        
        let availableButtonContainerView = UIView()
        let activityTimeButtonContainerView = UIView()
        let width = layer.frame.width / 2
        let height = layer.frame.height

        let labelsStackView = UIStackView(arrangedSubviews: [activityTimeButtonContainerView, availableButtonContainerView])
        labelsStackView.axis = .horizontal
        labelsStackView.distribution = .fillEqually
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        labelsStackView.alignment = .center
        
        addSubview(labelsStackView)
        labelsStackView.topAnchor.constraint(equalTo: scheduleView.topAnchor).isActive = true
        labelsStackView.bottomAnchor.constraint(equalTo: scheduleView.bottomAnchor).isActive = true
        labelsStackView.leftAnchor.constraint(equalTo: scheduleView.leftAnchor).isActive = true
        labelsStackView.rightAnchor.constraint(equalTo: scheduleView.rightAnchor).isActive = true
        
        addSubview(availableButton)
        addSubview(infoButton)
        addSubview(activityTimeLabel)

        availableButton.anchor(top: availableButtonContainerView.topAnchor, leading: availableButtonContainerView.leadingAnchor, bottom: availableButtonContainerView.bottomAnchor, trailing: infoButton.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width * 5 / 10, height: height))
        infoButton.anchor(top: availableButtonContainerView.topAnchor, leading: availableButton.trailingAnchor, bottom: availableButtonContainerView.bottomAnchor, trailing: availableButtonContainerView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width * 3 / 10, height: height))
        
        activityTimeLabel.anchor(top: activityTimeButtonContainerView.topAnchor, leading: activityTimeButtonContainerView.leadingAnchor, bottom: activityTimeButtonContainerView.bottomAnchor, trailing: activityTimeButtonContainerView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: width, height: height))
        
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



