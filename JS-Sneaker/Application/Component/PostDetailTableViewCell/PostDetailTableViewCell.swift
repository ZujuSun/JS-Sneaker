//
//  PostDetailTableViewCell.swift
//  JS-Sneaker
//
//  Created by zuju sun on 2018-11-06.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class PostDetailTableViewCell: UITableViewCell {
    
    let authorTitle: UILabel = {
        let authorTitle = UILabel()
        authorTitle.text = "Shawn90kg"
        authorTitle.textAlignment = .left
        authorTitle.numberOfLines = 1
        authorTitle.textColor = UIColor.darkGray
        authorTitle.font = UIFont(name: "Helvetica-LightOblique", size: 13)
        
        return authorTitle
    }()
    
    let sectionTitle: UILabel = {
        let sectionTitle = UILabel()
        sectionTitle.text = "Features"
        sectionTitle.textAlignment = .right
        sectionTitle.numberOfLines = 1
        sectionTitle.textColor = UIColor.darkGray
        sectionTitle.font = UIFont(name: "Helvetica-Light", size: 13)
        
        return sectionTitle
    }()
    
    let imageThumbnail: UIImageView = {
        let imageThumbnail = UIImageView()
        imageThumbnail.image = UIImage(named: "default-image")
        imageThumbnail.contentMode = .scaleToFill
        
        return imageThumbnail
    }()
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont(name: "ArialHebrew-Bold", size: 18)
        textView.backgroundColor = UIColor.clear
        textView.textColor = UIColor.black
        textView.sizeToFit()
        textView.isEditable = false
        textView.isSelectable = false
        textView.allowsEditingTextAttributes = false
        textView.isScrollEnabled = false
        textView.text = "what is up, my man, how are you"
        
        return textView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear

        self.setupImageView()
        self.setupTextView()
        self.setupSubView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubView() {
        self.addSubview(self.authorTitle)
        self.addSubview(self.sectionTitle)
        
        self.authorTitle.translatesAutoresizingMaskIntoConstraints = false
        self.authorTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.authorTitle.widthAnchor.constraint(equalToConstant: 120).isActive = true
        self.authorTitle.topAnchor.constraint(equalTo: self.textView.bottomAnchor).isActive = true
        self.authorTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        
        self.sectionTitle.translatesAutoresizingMaskIntoConstraints = false
        self.sectionTitle.rightAnchor.constraint(equalTo: self.imageThumbnail.leftAnchor, constant: -10).isActive = true
        self.sectionTitle.leftAnchor.constraint(equalTo: self.authorTitle.rightAnchor, constant: 10).isActive = true
        self.sectionTitle.topAnchor.constraint(equalTo: self.textView.bottomAnchor).isActive = true
        self.sectionTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
    
    private func setupImageView() {
        self.addSubview(self.imageThumbnail)
        
        self.imageThumbnail.translatesAutoresizingMaskIntoConstraints = false
        self.imageThumbnail.heightAnchor.constraint(equalToConstant: 80).isActive = true
        self.imageThumbnail.widthAnchor.constraint(equalToConstant: 130).isActive = true
        self.imageThumbnail.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        self.imageThumbnail.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
    
    private func setupTextView() {
        self.addSubview(self.textView)
        
        self.textView.translatesAutoresizingMaskIntoConstraints = false
        self.textView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.textView.rightAnchor.constraint(equalTo: self.imageThumbnail.leftAnchor, constant: -10).isActive = true
        self.textView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        self.textView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25).isActive = true
    }
    
}

extension PostDetailTableViewCell {
    public static func cellName() -> String {
        return "PostDetailTableViewCell"
    }
}
