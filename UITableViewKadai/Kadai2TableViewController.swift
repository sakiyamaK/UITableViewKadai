//
//  Kadai2TableViewController.swift
//  UITableViewKadai
//
//  Created by sakiyamaK on 2024/06/26.
//

import UIKit

class Kadai2TableViewController: UIViewController {
    
    let cellReuseId = "UITableViewCell"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let tableView = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseId)
        
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        tableView.reloadData()
    }
}

extension Kadai2TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)!        
        print(indexPath)
        return cell
    }
}

