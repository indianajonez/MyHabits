//
//  HabitsViewController.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 17.04.2023.
//

import UIKit

class HabitsViewController: UIViewController {
    
    private lazy var tableHabits: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        table.register(HeaderTableViewCell.self, forCellReuseIdentifier: HeaderTableViewCell.identifier)
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        navigationController?.navigationBar.prefersLargeTitles = true
        layout()
    }
    
    
    private func layout() {
        view.addSubview(tableHabits)
        
        NSLayoutConstraint.activate([
            tableHabits.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableHabits.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableHabits.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableHabits.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
}


// MARK: - UITableViewDelegate

extension HabitsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        HeaderTableViewCell()
    }
}

// MARK: - UITableViewDataSource

extension HabitsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }

}




