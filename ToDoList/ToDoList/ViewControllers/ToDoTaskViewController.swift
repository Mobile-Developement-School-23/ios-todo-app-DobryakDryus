//
//  ViewController.swift
//  ToDoList
//
//  Created by Andrey Oleynik on 20.06.2023.
//

import UIKit

class ToDoListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.backiOSPrimary
        
        view.addSubview(itemInfoButton)
        setUpAddItemButtonConstraints()
    }
    
    @objc func itemInfoButtonTapped() {
        let toDoTaskViewController = UINavigationController(rootViewController: ToDoTaskViewController())
        present(toDoTaskViewController, animated: true, completion: nil)
    }
    
    private lazy var itemInfoButton: UIButton = {
        let itemInfoButton = UIButton()
        itemInfoButton.setTitle("Добавить задачу", for: .normal)
        itemInfoButton.setTitleColor(.systemBlue, for: .normal)
        itemInfoButton.addTarget(self, action: #selector(itemInfoButtonTapped), for: .touchUpInside)

        return itemInfoButton
    }()
    
    private func setUpAddItemButtonConstraints() {
        itemInfoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            itemInfoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemInfoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    


}