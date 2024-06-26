//
//  CenterNumberTableViewCell.swift
//  UITableViewKadai
//
//  Created by sakiyamaK on 2024/06/26.
//

import UIKit

class CenterNumberTableViewCell: UITableViewCell {
    
    private weak var label: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let label = UILabel()
        label.textAlignment = NSTextAlignment.center
        self.contentView.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // 制約の優先度をdefaultLowにするためにパラメータに代入している
        let bottomConstraint = label.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        bottomConstraint.priority = UILayoutPriority.defaultLow
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            bottomConstraint,
            label.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 100),
        ])
        
        self.label = label
    }
        
    // storyboardからは読めませんよという設定
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(indexPath: IndexPath) {
        self.label.text = "\(indexPath.item)"
    }
}
