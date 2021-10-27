//
//  TabBarViewController.swift
//  NewsFeedApp
//
//  Created by Hasan Ali Şişeci on 23.10.2021.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController = ViewController()
        let favNewsViewController = FavNewsViewController()
        let tabBarViewController = TabBarViewController()
        
        let items = tabBarViewController.tabBar.items
        let images = ["house","favorites"]
        
        for item in 0..<items!.count {
            items?[item].image = UIImage(systemName: images[item])
        }
        
        tabBarViewController.modalPresentationStyle = .fullScreen
        present(tabBarViewController,animated: true)
    }

}
