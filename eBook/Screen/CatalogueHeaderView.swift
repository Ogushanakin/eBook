//
//  CatalogueHeaderView.swift
//  eBook
//
//  Created by AKIN on 11.01.2023.
//

import UIKit

class CatalogueHeaderView: UIView {

    // MARK: - Properties
    
    private let headerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        
        let bookImage = UIImageView()
        bookImage.image = UIImage(named: "bookblur")
        bookImage.clipsToBounds = true
        bookImage.contentMode = .scaleAspectFill
        
        view.addSubview(bookImage)
        bookImage.anchor(top: view.topAnchor, left: view.leftAnchor,
                         bottom: view.bottomAnchor, right: view.rightAnchor)
        
        
        return view
    }()
    
    private let booksImage: UIImageView = {
        let booksImage = UIImageView()
        booksImage.image = UIImage(named: "book")
        booksImage.clipsToBounds = true
        booksImage.contentMode = .scaleToFill
        booksImage.layer.cornerRadius = 10
        return booksImage
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        
        addSubview(headerView)
        headerView.anchor(top: safeAreaLayoutGuide.topAnchor, left: safeAreaLayoutGuide.leftAnchor,
                          bottom: safeAreaLayoutGuide.bottomAnchor, right: safeAreaLayoutGuide.rightAnchor,
                          paddingTop: -100)
        
        
        addSubview(booksImage)
        booksImage.setDimensions(height: 240, width: 60)
        booksImage.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor,
                         paddingLeft: 110, paddingBottom: -80, paddingRight: 110)
        
    }
    
}
