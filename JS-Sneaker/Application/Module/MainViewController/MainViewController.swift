//
//  MainViewController.swift
//  JS-Sneaker
//
//  Created by Jackie Sun on 2018-11-02.
//  Copyright © 2018 Jackie Sun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var tableView: UITableView
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.tableView = UITableView()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        
        self.title = MainViewControllerConstant.title
        
        self.view.addSubview(self.tableView)
        self.setupTableView()
    }
    
    private func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = UIColor.white
        
        self.tableView.register(SpotLightTableViewCell.self, forCellReuseIdentifier: SpotLightTableViewCell.tableViewCellName())
        self.tableView.register(PostDetailTableViewCell.self, forCellReuseIdentifier: PostDetailTableViewCell.cellName())
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == MainViewControllerConstant.SpotLightCell.Index) {
            return MainViewControllerConstant.SpotLightCell.Height
        } else {
            return MainViewControllerConstant.PostDetailCell.Height
        }
    }
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        if(indexPath.row == MainViewControllerConstant.SpotLightCell.Index) {
            cell = tableView.dequeueReusableCell(withIdentifier: SpotLightTableViewCell.tableViewCellName()) as! SpotLightTableViewCell
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: PostDetailTableViewCell.cellName()) as! PostDetailTableViewCell
        }
        return cell
    }
}
