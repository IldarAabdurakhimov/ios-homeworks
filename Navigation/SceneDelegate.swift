//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Ildar on 5/4/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow? = nil
    
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        
        
        
        let feedViewController = FeedViewController()
        feedViewController.title = "Feed"
        feedViewController.view.backgroundColor = .systemGreen
        feedViewController.tabBarItem.image = UIImage(named: "feed")
        
        
        let personViewController = ProfileViewController()
        personViewController.title = "person"
        personViewController.view.backgroundColor = .systemYellow
        personViewController.tabBarItem.image = UIImage(named: "person")
        
        let tabBarController = UITabBarController()
        
        
        //   feedViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        //  personViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let controllers = [feedViewController,personViewController]
        tabBarController.viewControllers = controllers.map{UINavigationController(rootViewController: $0)}
        
        tabBarController.selectedIndex = 0
        tabBarController.tabBar.backgroundColor = UIColor.brown
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        self.window = window
    }
    
    
    
}

