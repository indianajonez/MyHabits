//
//  HabitDetailsViewController.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 26.04.2023.
//

import UIKit

class HabitDetailsViewController: UIViewController {
    
    private func makeBarItem() {
        let buttonItem = UIBarButtonItem(title: "Править", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = buttonItem
    }
    @objc private func tapAction(){ // не понимаю куда должна вести кнопка, если прокто к сохранению, то не знаю как это офрмить
        let infoVC = HabitsCreateViewController()
        infoVC.title = "Править"
        navigationController?.pushViewController(infoVC, animated: true)
    }

    private lazy var table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        navigationController?.navigationBar.prefersLargeTitles = false
        layout()
        makeBarItem()

        // Do any additional setup after loading the view.
    }
    private func layout() {
        view.addSubview(table)
        
        NSLayoutConstraint.activate([
        
            table.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
        
        ])
    }
}

// MARK: - UITableViewDelegate

extension HabitDetailsViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource

extension HabitDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    
}
