//
//  CustomTableViewCell.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 26.04.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    private var isCheked = false
    
    private var habit: Habit?
    
    private lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .boldSystemFont(ofSize: 17)
        //title.textColor = .systemBlue
        return title
    }()
    
    private lazy var reminder: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Каждый день в 7:30"
        title.font = .systemFont(ofSize: 12)
        title.textColor = .systemGray2
        return title
    }()
    
    private lazy var titleCounter: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Счетчик:"
        title.font = .systemFont(ofSize: 13)
        title.textColor = .systemGray2
        return title
    }()
    
    private lazy var countRepeat: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .systemFont(ofSize: 13)
        title.textColor = .systemGray2
        title.text = "0"
        return title
    }()
    
    private lazy var checkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.layer.borderColor = UIColor.green.cgColor
        button.addTarget(self, action: #selector(checkHabitAction), for: .touchUpInside)
        return button
    }()

    
    @objc private func checkHabitAction() {
        if self.isCheked {
            checkButton.setImage(UIImage(systemName: "circle"), for: .normal)
            self.isCheked.toggle()
        } else {
            checkButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
            self.isCheked.toggle()
        }
        
        //checkButton.tintColor = .green
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(_ habit: Habit) {
        self.habit = habit
        checkButton.tintColor = habit.color
        title.text = habit.name
        title.textColor = habit.color
    }

    
    private func layout() {
        [title, reminder, titleCounter, countRepeat, checkButton ].forEach({contentView.addSubview($0)})
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10 ),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 26),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -screenWidth*0.3),
            
            reminder.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            reminder.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 26),
            reminder.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -screenWidth*0.3),
            
            titleCounter.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            titleCounter.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 26),
            
        
            countRepeat.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            countRepeat.leadingAnchor.constraint(equalTo: titleCounter.trailingAnchor, constant: 10),
            
            checkButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            checkButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
        ])
    }

}
