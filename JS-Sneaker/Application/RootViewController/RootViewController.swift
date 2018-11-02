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
        self.view.backgroundColor = UIColor.black
        
        setupTabs()
    }
    
    
    func setupTabs() {
        let mainViewController = MainViewController()
//        mainViewController.tabBarItem = UITabBarItem(title: "Home", image: <#T##UIImage?#>, selectedImage: <#T##UIImage?#>)
    }
}
