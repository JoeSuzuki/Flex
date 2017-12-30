//
//  HomeGroupCell.swift
//  Flex
//
//  Created by Joe Suzuki on 12/30/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import LBTAComponents

class HomeGroupCell: DatasourceCell {
    
    let groupName: UILabel = {
        let label = UILabel()
        label.text = "Dr. Andy"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = mainBlue
        return label
    }()

    let countDown: UILabel = {
        let label = UILabel()
        label.text = "5:00"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = mainBlue
        return label
    }()

    let seeMoreButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See more", for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow-1").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        backgroundColor = .white
        
        setupTopInfomation()
        setupBottomButton()
    }
    fileprivate func setupTopInfomation() {
        let groupContainerView = UIView()
        let countContainerView = UIView()

        let stackView = UIStackView(arrangedSubviews: [groupContainerView, countContainerView])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 20)

        addSubview(groupName)
        addSubview(countDown)
        
        groupName.anchor(groupContainerView.topAnchor, left: groupContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        countDown.anchor(countContainerView.topAnchor, left: countContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)


    }
    
    fileprivate func setupBottomButton() {
        let seeMoreButtonContainerView = UIView()
        
        let buttonStackView = UIStackView(arrangedSubviews: [seeMoreButtonContainerView])
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        
        addSubview(buttonStackView)
        buttonStackView.anchor(nil, left: groupName.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        addSubview(seeMoreButton)
        
        seeMoreButton.anchor(seeMoreButtonContainerView.topAnchor, left: seeMoreButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    }
}

