//
//  DetailViewController.swift
//  UITableViewKadai
//
//  Created by sakiyamaK on 2024/06/26.
//

import UIKit

class DetailViewController: UIViewController {

    private var indexPath: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel()
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        
        label.text = "\(indexPath.item)"
    }
    
    func configure(indexPath: IndexPath) {
        self.indexPath = indexPath
    }
}
