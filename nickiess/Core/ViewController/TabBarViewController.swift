//
//  TabBarViewController.swift
//  nickiess
//
//  Created by Nik Uzair on 25/12/2024.
//

import UIKit

class TabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let vc1 = HomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
    let vc2 = ProductViewController()
    
    vc1.title = "Home"
    vc2.title = "Product"
    
    vc1.navigationItem.largeTitleDisplayMode = .always
    vc2.navigationItem.largeTitleDisplayMode = .always
    
    let nav1 = UINavigationController(rootViewController: vc1)
    let nav2 = UINavigationController(rootViewController: vc2)
    
    nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
    nav2.tabBarItem = UITabBarItem(title: "Product", image: UIImage(systemName: "tag"), tag: 2)
    
    nav1.navigationBar.prefersLargeTitles = true
    nav2.navigationBar.prefersLargeTitles = true
    
    tabBar.isTranslucent = false
    tabBar.backgroundColor = .systemGray6
    
    setViewControllers([nav1, nav2], animated: true)
  }
}
