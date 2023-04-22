//
//  InfoViewController.swift
//  Navigation
//
//  Created by Ildar on 20/4/2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Info"
        
        let label = UILabel()
        label.text = "This is the info view controller"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        let button = UIButton(type: .system)
        button.setTitle("Показать UIAlertController", for: .normal)
        button.addTarget(self, action: #selector(showAlertController), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func showAlertController() {
        // Создаем UIAlertController с заданным title и message
        let alertController = UIAlertController(title: "Заголовок", message: "Сообщение", preferredStyle: .alert)
        
        // Создаем первый UIAlertAction
        let firstAction = UIAlertAction(title: "Действие 1", style: .default) { _ in
            print("Нажата кнопка Действие 1")
        }
        alertController.addAction(firstAction)
        
        // Создаем второй UIAlertAction
        let secondAction = UIAlertAction(title: "Действие 2", style: .default) { _ in
            print("Нажата кнопка Действие 2")
        }
        alertController.addAction(secondAction)
        
        // Показываем UIAlertController на экране
        present(alertController, animated: true, completion: nil)
    }
}




