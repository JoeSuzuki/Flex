//
//  CreateGroupCells.swift
//  Flex
//
//  Created by Joe Suzuki on 7/7/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import MapKit

class GroupLocationCell: UICollectionViewCell {
    // Location
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let mapView: MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    func setupViews() {
        backgroundColor = .white
        addSubview(mapView)
        
        mapView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
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
