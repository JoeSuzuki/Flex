//
//  HomeDatasource.swift
//  Flex
//
//  Created by Joe Suzuki on 12/30/17.
//  Copyright © 2017 Joe Suzuki. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let groups: [Group] = {
        let group1 = Group(name: "Dr. Andy", time: "1:00")
        return [group1]
    }()
    
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [GroupFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [GroupHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [HomeGroupCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return groups[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 1
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return groups.count
    }
}
