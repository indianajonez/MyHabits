//
//  MyHabitsViewCell.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 20.04.2023.
//

import UIKit

class MyHabitsViewController: UIViewController {
    
    private let notificationCenter = NotificationCenter.default
    
    private lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private lazy var MyHabitsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func layout() {
        view.addSubview(scrollView)
        scrollView.addSubview(MyHabitsView)
        //[logoImage, logInButton].forEach{loginView.addSubview($0)} // удалила отсюда loginPassword, loginText,
        
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
