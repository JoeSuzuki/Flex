//
//  GroupTableHeader.swift
//  Flex
//
//  Created by Joe Suzuki on 7/11/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Kingfisher

class GroupTableHeader: UITableViewHeaderFooterView {
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        let width = layer.frame.width
        let height = layer.frame.height / 5

        contentView.addSubview(groupImageView)
        contentView.addSubview(descriptionView)
        contentView.addSubview(openTimeLabel)

        groupImageView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: descriptionView.topAnchor,
                              trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0),
                              size: .init(width: width, height: 25))
        descriptionView.anchor(top: groupImageView.bottomAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor,
                               trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0),
                               size: .init(width: width, height: height * 2))
        openTimeLabel.anchor(top: descriptionView.topAnchor, leading: descriptionView.leadingAnchor, bottom: descriptionView.bottomAnchor,
                               trailing: descriptionView.trailingAnchor,
                               padding: .init(top: 0, left: 0, bottom: 0, right: 0))
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
    let descriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let openTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "8:00 AM - 5:00 PM"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .backgroundGrey
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

