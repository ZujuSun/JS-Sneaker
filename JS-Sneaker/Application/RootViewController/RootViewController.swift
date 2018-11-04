//
//  RootViewController.swift
//  JS-Sneaker
//
//  Created by Jackie Sun on 2018-11-02.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.clipsToBounds = true
        self.view.tintColor = UIColor.black
        self.view.backgroundColor = UIColor.black
        
        setupTabs()
    }
    
    
    func setupTabs() {
        let mainViewController = MainViewController()
        let aboutViewController = AboutViewController()
        let searchViewController = SearchViewController()
        
        mainViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "sneaker_flat"), selectedImage: UIImage(named: "sneaker_filled"))
        aboutViewController.tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "sneaker_flat"), selectedImage: UIImage(named: "sneaker_filled"))
        searchViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "sneaker_flat"), selectedImage: UIImage(named: "sneaker_filled"))
        
        let tabViewControllers:[UIViewController] = [
            RootNavigationViewController.init(rootViewController: mainViewController),
            RootNavigationViewController.init(rootViewController: aboutViewController),
            RootNavigationViewController.init(rootViewController: searchViewController)
        ]
        
        self.viewControllers = tabViewControllers
        
        
    }
}
