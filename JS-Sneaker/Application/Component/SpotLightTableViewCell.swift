//
//  SpotLightTableViewCell.swift
//  JS-Sneaker
//
//  Created by Jackie Sun on 2018-11-03.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class SpotLightTableViewCell: UITableViewCell {
    var collectionView: UICollectionView
    var backgroundImageView: UIImageView
    var titleLabel: UILabel
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.collectionView = UICollectionView()
        self.backgroundImageView = UIImageView()
        self.titleLabel = UILabel()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear
        
        self.setupImageView()
        self.setupCollectionView()
        self.setupTitleLabel()
    }
    
    
    //Mark: private setup for cell
    
    private func setupImageView() {
        self.addSubview(self.backgroundImageView)
        self.backgroundImageView.backgroundColor = UIColor.black
        
        self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func setupCollectionView() {
        self.addSubview(self.collectionView)
        self.collectionView.delegate = self
//        self.collectionView.dataSource = self
        
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 25).isActive = true
        self.collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 25).isActive = true
        
        self.collectionView.backgroundColor = UIColor.clear
        self.collectionView.showsHorizontalScrollIndicator = false
    }
    
    private func setupTitleLabel() {
        self.addSubview(self.titleLabel)
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.backgroundColor = UIColor.clear
        self.titleLabel.text = "test "
        
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        self.titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.collectionView.bottomAnchor, constant: 5).isActive = true
    }
}

extension SpotLightTableViewCell: UICollectionViewDelegate {
    
}

//extension SpotLightTableViewCell: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//}
