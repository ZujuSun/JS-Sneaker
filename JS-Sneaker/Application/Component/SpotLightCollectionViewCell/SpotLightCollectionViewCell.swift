//
//  SpotLightCollectionViewCell.swift
//  JS-Sneaker
//
//  Created by zuju sun on 2018-11-04.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class SpotLightCollectionViewCell: UICollectionViewCell {
    
    var backgroundImageView: UIImageView
    var titleLabel: UILabel
    var overlay: UIView
    
    override init(frame: CGRect) {
        self.backgroundImageView = UIImageView()
        self.titleLabel = UILabel()
        self.overlay = UIView()
        
        super.init(frame:frame)
        
        self.setupImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupImageView() {
        self.addSubview(self.backgroundImageView)
        self.backgroundImageView.image = UIImage(named: "default-image")?.blurryImage(withOptions: BlurryOptions.pro, blurRadius: 2.0)
        self.backgroundImageView.contentMode = .scaleToFill
        self.backgroundImageView.backgroundColor = UIColor.clear
        
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
        self.titleLabel.text = "what the fuck "
        
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.centerXAnchor.constraint(equalTo: self.overlay.centerXAnchor).isActive = true
        self.titleLabel.centerYAnchor.constraint(equalTo: self.overlay.centerYAnchor).isActive = true
    }
}
