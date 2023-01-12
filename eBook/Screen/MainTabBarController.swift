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
        let vc2 = UINavigationController(rootViewController: ProfileController())
        let vc3 = UINavigationController(rootViewController: SearchController())
        
        vc1.tabBarItem.image = UIImage(systemName: "text.book.closed")
        vc2.tabBarItem.image = UIImage(systemName: "person")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc1.title = "Library"
        vc2.title = "Profile"
        vc3.title = "Search"
        
        navigationController?.navigationBar.isHidden = true
        
        tabBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setViewControllers([vc1, vc3, vc2], animated: true)
    }

}
