//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Ekaterina Saveleva on 17.04.2023.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        self.title = "Информация"
        layout()
    }
    private lazy var scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private lazy var infoText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму: \nПровести 1 день без обращения к старым привычкам, стараться вести себя так, как будто цель, загаданная в перспективу, находится на расстоянии шага. \nВыдержать 2 дня в прежнем состоянии самоконтроля. Отметить в дневнике первую неделю изменений и подвести первые итоги – что оказалось тяжело, что – легче, с чем еще предстоит серьезно бороться. Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятия положительных качеств. Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого негатива и двигается в нужном направлении с хорошей динамикой. На 90-й день соблюдения техники все лишнее из «прошлой жизни» перестает напоминать о себе, и человек, оглянувшись назад, осознает себя полностью обновившимся."
        return label
    }()
    
    private func layout() {
       // [infoText, scroll].forEach{view.addSubview($0)}
        view.addSubview(scroll)
        scroll.addSubview(infoText)
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        NSLayoutConstraint.activate([
            infoText.topAnchor.constraint(equalTo: scroll.topAnchor),
            infoText.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            infoText.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            infoText.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            infoText.widthAnchor.constraint(equalToConstant: screenWidth),
            
            scroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
}

