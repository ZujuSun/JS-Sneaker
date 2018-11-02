//
//  RootViewController.swift
//  JS-Sneaker
//
//  Created by Jackie Sun on 2018-11-02.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.title = "hehe"
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.view.backgroundColor = UIColor.lightGray
    }
    
    
}
