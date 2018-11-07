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
    var pageControl: UIPageControl
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        self.pageControl = UIPageControl()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear
        
        self.setupCollectionView()
        self.setupPageControl()
    }
    
    
    //Mark: private setup for cell
    
    private func setupCollectionView() {
        self.addSubview(self.collectionView)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.isPagingEnabled = true
        self.collectionView.alwaysBounceHorizontal = true
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.register(SpotLightCollectionViewCell.self, forCellWithReuseIdentifier: "SpotLightCollectionViewCell")
        
        //set it to scroll horizontally
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.collectionView.collectionViewLayout = layout
        
        //set up layout of collectionView
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
        self.collectionView.backgroundColor = UIColor.clear
    }
    
    private func setupPageControl() {
        self.addSubview(self.pageControl)
        self.pageControl.isHidden = false
        
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pageControl.widthAnchor.constraint(equalToConstant: 10).isActive = true
        self.pageControl.heightAnchor.constraint(equalToConstant: 5).isActive = true
        self.pageControl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.pageControl.topAnchor.constraint(equalTo: self.topAnchor, constant: 230).isActive = true
        
        self.bringSubviewToFront(self.pageControl)
    }
    
}

extension SpotLightTableViewCell: UICollectionViewDelegateFlowLayout {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("haha")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        self.pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}

extension SpotLightTableViewCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.bounds.size.width, height: self.bounds.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

extension SpotLightTableViewCell: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.pageControl.numberOfPages = 2
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "SpotLightCollectionViewCell", for: indexPath) as! SpotLightCollectionViewCell
        return cell;
    }

}
