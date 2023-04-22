//
//  FeedViewController.swift
//  Navigation
//
//  Created by Ildar on 16/4/2023.
//

import UIKit

class FeedViewController: UIViewController {
    
         
        private lazy var button: UIButton = {
                let button = UIButton()
                button.setTitle("Перейти к посту", for: .normal)
                button.setTitleColor(.systemBlue, for: .normal)
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
    
        override func viewDidLoad() {
                super.viewDidLoad()
                
                view.addSubview(button)
                
                NSLayoutConstraint.activate([
                    button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
                ])
                
               button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            }
            
            @objc private func didTapButton() {
              
                let postVC = PostViewController()
                postVC.selectedPost = "Выбранный пост" // передаем выбранный пост в PostViewController
                navigationController?.pushViewController(postVC, animated: true) // делаем переход на экран поста
            }
        }
