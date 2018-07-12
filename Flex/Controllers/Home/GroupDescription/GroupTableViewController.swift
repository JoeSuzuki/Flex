//
//  GroupTableViewController.swift
//  Flex
//
//  Created by Joe Suzuki on 7/11/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class GroupTableViewController: UITableViewController {
    let headerId = "headerId"
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarItems()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        setupTableView()
    }
    
    // MARK: - HEADER
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! CustomTableViewHeader
        return header
    }
    
    // MARK: - CELL
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableCell
        return cell
    }
    
    func setupTableView() {
        tableView.backgroundColor = .lightGray
        tableView.register(CustomTableViewHeader.self, forHeaderFooterViewReuseIdentifier: headerId)
        tableView.register(CustomTableCell.self, forCellReuseIdentifier: cellId)
    }
}
