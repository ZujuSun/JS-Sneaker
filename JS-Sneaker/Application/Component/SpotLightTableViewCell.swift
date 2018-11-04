//
//  SpotLightTableViewCell.swift
//  JS-Sneaker
//
//  Created by Jackie Sun on 2018-11-03.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class SpotLightTableViewCell: UIViewController {
    var collectionView: UICollectionView
    var backgroundImageView: UIImageView
    var titleLabel: UILabel
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.collectionView = UICollectionView()
        self.backgroundImageView = UIImageView()
        self.titleLabel = UILabel()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupImageView()
    }
    
    func setupImageView() {
        self.view.addSubview(self.backgroundImageView)
        
        
        self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.backgroundImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.backgroundImageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.backgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}
