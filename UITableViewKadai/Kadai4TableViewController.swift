//
//  Kadai4TableViewController.swift
//  UITableViewKadai
//
//  Created by sakiyamaK on 2024/06/26.
//

import UIKit

class Kadai4TableViewController: UIViewController {
    
    let cellReuseId = "UITableViewCell"
    
    var cells: [Int] = []
    
    private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // stackviewの設定
        let stackView = UIStackView()
        stackView.axis = .vertical
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])

        // buttonの設定
        let button = UIButton()
        button.setTitle("セルよ！増えろ", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        let action = UIAction.init(handler: { action in
            // セルの数をひとつ増やしてtableviewを再読み込み
            self.cells.append(self.cells.count + 1)
            self.tableView.reloadData()
        })
        button.addAction(action, for: UIControl.Event.touchUpInside)
        
        stackView.addArrangedSubview(button)
            
        // tableViewの設定
        let tableView = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseId)
        tableView.dataSource = self
        
        stackView.addArrangedSubview(tableView)
        
        tableView.reloadData()
        
        self.tableView = tableView
    }
}

extension Kadai4TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)!
        
        let item = cells[indexPath.row]
        
        var configuration = UIListContentConfiguration.cell()
        configuration.text = "\(cells[indexPath.row])"

        cell.contentConfiguration = configuration
        
//        cell.textLabel?.text = "\(item)"

        return cell
    }
}
