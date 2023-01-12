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
        
        let listenButton = UIButton()
        listenButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        listenButton.setImage(UIImage(systemName: "headphones"), for: .normal)
        listenButton.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        listenButton.layer.borderWidth = 1
        listenButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        listenButton.setTitle(" Listen", for: .normal)
        listenButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        listenButton.backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        listenButton.layer.cornerRadius = 24
        
        view.addSubview(listenButton)
        listenButton.setDimensions(height: 50, width: 170)
        listenButton.anchor(top: view.topAnchor,left: view.leftAnchor, paddingTop: 476, paddingLeft: 20)
        
        let readButton = UIButton()
        readButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        readButton.setImage(UIImage(systemName: "book"), for: .normal)
        readButton.tintColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        readButton.layer.borderWidth = 1
        readButton.layer.borderColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        readButton.setTitle(" Read", for: .normal)
        readButton.setTitleColor(#colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1), for: .normal)
        readButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        readButton.layer.cornerRadius = 24
        
        view.addSubview(readButton)
        readButton.setDimensions(height: 50, width: 170)
        readButton.anchor(top: view.topAnchor,right: view.rightAnchor, paddingTop: 476, paddingRight: 20)
        
        let nameLabel = UILabel()
        nameLabel.text = "The Time Regulation Institute"
        nameLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        
        view.addSubview(nameLabel)
        nameLabel.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                         paddingTop: 90, paddingLeft: 50, paddingRight: 50)
        
        let writerLabel = UILabel()
        writerLabel.text = "Ahmet Hamdi Tanpınar >"
        writerLabel.textColor = .gray
        writerLabel.textAlignment = .center
        writerLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        view.addSubview(writerLabel)
        writerLabel.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                         paddingTop: 120, paddingLeft: 50, paddingRight: 50)
        
        return view
    }()
    
    private let rateLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "4.7"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let pageLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "432"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let publishedYear: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "1954"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let readingCount: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "32.8k"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let rateeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "rate"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private let pageCountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "print length"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private let publicationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "publish. year"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private let readLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "read"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private let linkingView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.setDimensions(height: 66, width: 0.4)
        return view
    }()
    
    private let linkinggView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.setDimensions(height: 66, width: 0.4)
        return view
    }()
    
    private let linkingggView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.setDimensions(height: 66, width: 0.4)
        return view
    }()
    
    private let aboutBookLabel: UILabel = {
        let label = UILabel()
        label.text = "About Book"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    private let descriptionText: UILabel = {
        let label = UILabel()
        label.text = "At its center is Hayri Irdal, an infectiously charming antihero who becomes entangled with an eccentric cast of characters—a television mystic, a pharmacist who dabbles in alchemy, a dignitary from the lost Ottoman Empire, a “clock whisperer”—at the Time Regulation Institute, a vast organization that employs a hilariously intricate system of fines for the purpose of changing all the clocks in Turkey to Western time. Recounted in sessions with his psychoanalyst, the story of Hayri Irdal’s absurdist misadventures plays out as a brilliant allegory of the collision of tradition and modernity, of East and West, infused with a poignant blend of hope for the promise of the future and nostalgia for a simpler time."
        label.numberOfLines = 12
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    
    // MARK: - Lifecycle

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
        
        let stack = UIStackView(arrangedSubviews: [rateLabel, pageLabel, publishedYear, readingCount])
        stack.axis = .horizontal
        stack.spacing = 30
        stack.distribution = .fillEqually
        
        addSubview(stack)
        stack.anchor(top: self.topAnchor, left: self.leftAnchor, right: self.rightAnchor, paddingTop: 160, paddingLeft: 14, paddingRight: 20)
        
        let labelsstack = UIStackView(arrangedSubviews: [rateeLabel, pageCountLabel, publicationLabel, readLabel])
        labelsstack.axis = .horizontal
        labelsstack.spacing = 30
        labelsstack.distribution = .fillEqually
        
        addSubview(labelsstack)
        labelsstack.anchor(top: self.topAnchor, left: self.leftAnchor, right: self.rightAnchor, paddingTop: 188, paddingLeft: 14, paddingRight: 20)
        rateeLabel.centerX(inView: rateLabel)
        pageCountLabel.centerX(inView: pageLabel)
        publicationLabel.centerX(inView: publishedYear)
        readLabel.centerX(inView: readingCount)
        
        let linkingstack = UIStackView(arrangedSubviews: [linkingView, linkinggView, linkingggView])
        linkingstack.axis = .horizontal
        linkingstack.spacing = 80
        linkingstack.distribution = .equalCentering
        
        addSubview(linkingstack)
        linkingstack.anchor(top: self.topAnchor, left: self.leftAnchor, right: self.rightAnchor,
                            paddingTop: 150, paddingLeft: 94, paddingRight: 94)
        
        addSubview(aboutBookLabel)
        aboutBookLabel.anchor(top: linkingstack.bottomAnchor , left: self.leftAnchor,
                              paddingTop: 20, paddingLeft: 20)
        
        addSubview(descriptionText)
        descriptionText.anchor(top: aboutBookLabel.bottomAnchor, left: self.leftAnchor,
                               right: self.rightAnchor, paddingTop: 5, paddingLeft: 20,
                               paddingRight: 20)
    }

}
