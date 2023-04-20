//
//  PostViewController.swift
//  Navigation
//
//  Created by Ildar on 17/4/2023.
//

import UIKit

class PostViewController: UIViewController {
        var selectedPost: String?
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                view.backgroundColor = .systemPink // меняем цвет главной view
                title = selectedPost // меняем заголовок контроллера
                            
                let label = UILabel()
                label.text = selectedPost
                label.textAlignment = .center
                label.font = UIFont.systemFont(ofSize: 24)
                label.translatesAutoresizingMaskIntoConstraints = false
                
                view.addSubview(label)
                
                NSLayoutConstraint.activate([
                    label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
                ])
            }
        }
        // Do any additional setup after loading the view.
  
