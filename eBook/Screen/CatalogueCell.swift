//
//  CatalogueCell.swift
//  eBook
//
//  Created by AKIN on 11.01.2023.
//

import UIKit

final class CatalogueCell: UITableViewCell {
    
    // MARK: - Properties
    
    private let cellView: UIView = {
        let view = UIView()
        
        let bookMark = UIImageView()
        bookMark.image = UIImage(systemName: "bookmark.fill")
        bookMark.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bookMark.clipsToBounds = true
        bookMark.contentMode = .scaleAspectFill
        
        view.addSubview(bookMark)
        bookMark.setDimensions(height: 30, width: 30)
        bookMark.anchor(top: view.topAnchor, right: view.rightAnchor, paddingRight: 30)
        
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helpers
    
    func configureUI() {
        
        layer.cornerRadius = 20
        clipsToBounds = true
        backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        
        addSubview(cellView)
        cellView.anchor(top: safeAreaLayoutGuide.topAnchor, left: safeAreaLayoutGuide.leftAnchor,
                          bottom: safeAreaLayoutGuide.bottomAnchor, right: safeAreaLayoutGuide.rightAnchor)
    }

}
