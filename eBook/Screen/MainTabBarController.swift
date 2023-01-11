//
//  MainTabBarController.swift
//  eBook
//
//  Created by AKIN on 11.01.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: CatalogueController())
        
        vc1.tabBarItem.image = UIImage(systemName: "text.book.closed")
        
        vc1.title = "Library"
        
        navigationController?.navigationBar.isHidden = true
        
        tabBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setViewControllers([vc1], animated: true)
    }

}
