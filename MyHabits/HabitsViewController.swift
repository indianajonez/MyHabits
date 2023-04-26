//
//  HabitsViewController.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 17.04.2023.
//

import UIKit

class HabitsViewController: UIViewController {
    
    private lazy var plusButton: UIBarButtonItem = {
        let plusButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(performPlusButton))
        plusButton.width = 0
        plusButton.tintColor = .magenta
        return plusButton
    }()
    
    
    private lazy var tableHabits: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        table.register(HeaderTableViewCell.self, forCellReuseIdentifier: HeaderTableViewCell.identifier)
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return table
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = plusButton
        layout()
    }
    
    @objc func performPlusButton() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = HabitDetailsViewController()
        detail.title = "Detail \(indexPath.row)"
        navigationController?.pushViewController(detail, animated: true)
    }
}

// MARK: - UITableViewDataSource

extension HabitsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as? CustomTableViewCell else {return UITableViewCell()}
          cell.selectionStyle = .none
          return cell
    }

}




