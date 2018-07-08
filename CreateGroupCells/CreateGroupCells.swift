//
//  CreateGroupCells.swift
//  Flex
//
//  Created by Joe Suzuki on 7/7/18.
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
        view.backgroundColor = .red //UIColor(r: 90, g: 200, b: 250, a: 0.5)
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
        view.backgroundColor = .blue //UIColor(r: 90, g: 200, b: 250, a: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    func setupViews() {
        backgroundColor = .white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class GroupLocationCell: UICollectionViewCell {
    // Location
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    func setupViews() {
        backgroundColor = .white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class GroupProfilePictureCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    func setupViews() {
        backgroundColor = .white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class GroupExtraDetailCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    func setupViews() {
        backgroundColor = .white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
