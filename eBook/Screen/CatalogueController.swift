//
//  CatalogueController.swift
//  eBook
//
//  Created by AKIN on 11.01.2023.
//

import UIKit

private let reuseIdentifier = "CatalogueCell"

final class CatalogueController: UITableViewController {
    
    // MARK: - Properties
    
    private lazy var headerView = CatalogueHeaderView(frame: .init(x: 0, y: 0, width: view.frame.width, height: 136))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9310562015, green: 0.9152015448, blue: 0.8743785024, alpha: 1)
        navigationController?.navigationBar.isHidden = true
        tableView.separatorStyle = .none
        tableView.tableHeaderView = headerView
        tableView.rowHeight = 700
        tableView.register(CatalogueCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
}

// MARK: - UITableViewDataSource

extension CatalogueController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->     UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CatalogueCell
        cell.selectionStyle = .none
        return cell
    }
}
