//
//  TapBarController.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 17.04.2023.
//

import UIKit

class TabBarController: UITabBarController {
    let firstVC = HabitsViewController() // экземпляр класса
    let secondVC = InfoViewController() // экземпляр класса
    
    override func viewDidLoad() {
        setupControllers() 
        super.viewDidLoad()
        
        UINavigationBar.appearance().backgroundColor = .systemGray6
        //UIBarButtonItem.appearance().tintColor = UIColor.red
        UITabBar.appearance().backgroundColor = .systemGray6
        UITabBar.appearance().barTintColor = .magenta // пока не работает, таббар остается голубым когда наводишь  курсор
    }
    
    func setupControllers() {
        firstVC.tabBarItem.title = "Привычки"
        firstVC.navigationItem.title = "Сегодня"
        secondVC.tabBarItem.title = "Информация"
        secondVC.navigationItem.title = "Информация"
        
        firstVC.tabBarItem.image = UIImage(systemName: "rectangle.grid.1x2")
        secondVC.tabBarItem.image = UIImage(systemName: "exclamationmark.bubble.circle.fill")
        
        let firstNavigationVC = UINavigationController(rootViewController: firstVC)
        let secondNavigationVC = UINavigationController(rootViewController: secondVC)
        
        viewControllers = [firstNavigationVC, secondNavigationVC]
        
    }
    
}
