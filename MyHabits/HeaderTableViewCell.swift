//
//  HeaderTableViewCell.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 21.04.2023.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    private lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .lightGray
        title.text = "Все получится!"
        return title
    }()
    
    private lazy var percent: UILabel = {
        let percent = UILabel()
        percent.translatesAutoresizingMaskIntoConstraints = false
        percent.textColor = .lightGray
        percent.text = "50%"
        return percent
    }()
    
    private lazy var progress: UIProgressView = {
        let progress = UIProgressView()
        progress.translatesAutoresizingMaskIntoConstraints = false
        progress.progressViewStyle = .default
        progress.progressTintColor = .purple
        progress.progress = 0.5
        return progress
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func layout() {
        [title, percent, progress].forEach{contentView.addSubview($0)}
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 15),
            title.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            title.bottomAnchor.constraint(equalTo: progress.topAnchor, constant: -15),
            
            percent.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 15),
            percent.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            percent.bottomAnchor.constraint(equalTo: progress.topAnchor, constant: -15),
            
            progress.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            progress.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            progress.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -15)
        ])
    }
}