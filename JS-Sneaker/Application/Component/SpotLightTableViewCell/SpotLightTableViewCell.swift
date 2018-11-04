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
    var overlay: UIView
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        self.backgroundImageView = UIImageView()
        self.titleLabel = UILabel()
        self.overlay = UIView()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear
        
        self.setupImageView()
//        self.setupCollectionView()
//        self.setupTitleLabel()
    }
    
    
    //Mark: private setup for cell
    
    private func setupImageView() {
        self.addSubview(self.backgroundImageView)
        self.backgroundImageView.image = UIImage(named: "default-image")?.blurryImage(withOptions: BlurryOptions.pro, blurRadius: 2.0)
        self.backgroundImageView.contentMode = .scaleToFill
        self.backgroundImageView.backgroundColor = UIColor.clear
        //self.backgroundImageView.addOverlay(color: UIColor.darkGray)
        
        self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.setupOverlay()
    }
    
    private func setupOverlay() {
        self.overlay.backgroundColor = UIColor.darkGray
        self.overlay.alpha = 0.6
        self.backgroundImageView.addSubview(self.overlay)
        
        self.overlay.translatesAutoresizingMaskIntoConstraints = false
        self.overlay.trailingAnchor.constraint(equalTo: self.backgroundImageView.trailingAnchor).isActive = true
        self.overlay.leadingAnchor.constraint(equalTo: self.backgroundImageView.leadingAnchor).isActive = true
        self.overlay.topAnchor.constraint(equalTo: self.backgroundImageView.topAnchor).isActive = true
        self.overlay.bottomAnchor.constraint(equalTo: self.backgroundImageView.bottomAnchor).isActive = true
        
        self.setupTitleLabel()
    }
    
    private func setupTitleLabel() {
        self.overlay.addSubview(self.titleLabel)
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.backgroundColor = UIColor.clear
        self.titleLabel.alpha = 1.0
        self.titleLabel.text = "dasgsdpguasdpgohasdpfbasdpogubaepsb "
        
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.centerXAnchor.constraint(equalTo: self.overlay.centerXAnchor).isActive = true
        self.titleLabel.centerYAnchor.constraint(equalTo: self.overlay.centerYAnchor).isActive = true
    }
    
    private func setupCollectionView() {
        self.addSubview(self.collectionView)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 25).isActive = true
        self.collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 25).isActive = true
        
        self.collectionView.backgroundColor = UIColor.clear
        self.collectionView.showsHorizontalScrollIndicator = true
    }
    
}

extension SpotLightTableViewCell: UICollectionViewDelegate {
    
}

extension SpotLightTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell(frame:CGRect(x: 0, y: 0, width: 200, height: 200))
        cell.backgroundColor = UIColor.green
        return cell;
    }


}
