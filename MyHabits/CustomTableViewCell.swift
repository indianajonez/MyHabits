//
//  CustomTableViewCell.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 26.04.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    private lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Выпить стакан воды"
        return title
    }()
    
    private lazy var reminder: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Evry day at 7"
        return title
    }()
    
    private lazy var titleCounter: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Counter"
        return title
    }()
    
    private lazy var countRepeat: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "4"
        return title
    }()
    
    private lazy var checkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "circle"), for: .normal)
//        button.layer.borderWidth = 2
//        button.layer.cornerRadius = 19
        button.layer.borderColor = UIColor.green.cgColor
        button.addTarget(self, action: #selector(checkHabitAction), for: .touchUpInside)
        return button
    }()

    
    @objc private func checkHabitAction() {
        print("check Active or NOT")
        checkButton.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
        checkButton.tintColor = .green
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
    private func layout() {
        [title, reminder, titleCounter, countRepeat, checkButton ].forEach({contentView.addSubview($0)})
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10 ),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -screenWidth*0.3),
            
            reminder.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            reminder.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            reminder.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -screenWidth*0.3),
            
            titleCounter.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            titleCounter.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
        
            countRepeat.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            countRepeat.leadingAnchor.constraint(equalTo: titleCounter.trailingAnchor, constant: 10),
            
            checkButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            checkButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
        ])
    }

}
