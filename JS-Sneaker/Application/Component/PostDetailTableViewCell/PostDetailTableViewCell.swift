//
//  PostDetailTableViewCell.swift
//  JS-Sneaker
//
//  Created by zuju sun on 2018-11-06.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class PostDetailTableViewCell: UITableViewCell {
    var titleLabel: UILabel
    var imageThumbnail: UIImageView
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.titleLabel = UILabel()
        self.imageThumbnail = UIImageView()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear
        self.setupTextView()
        self.setupImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupImageView() {
        self.addSubview(self.imageThumbnail)
        
        self.imageThumbnail.image = UIImage(named: "default-image")
        self.imageThumbnail.contentMode = .scaleToFill
        
        self.imageThumbnail.translatesAutoresizingMaskIntoConstraints = false
        self.imageThumbnail.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.imageThumbnail.widthAnchor.constraint(equalToConstant: 130).isActive = true
        self.imageThumbnail.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        self.imageThumbnail.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
    
    
    private func setupTextView() {
//        self.addSubview(self.titleLabel)
//
//        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
    }
}

extension PostDetailTableViewCell {
    public static func cellName() -> String {
        return "PostDetailTableViewCell"
    }
}
