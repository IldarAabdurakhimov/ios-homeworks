//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Ildar on 5/4/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // Окно приложения
    var window: UIWindow?
    
    // Метод, вызываемый, когда сцена подключается к окну приложения
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // Проверяем, является ли сцена типом UIWindowScene, иначе выходим из метода
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Создаем новое окно приложения
        let window = UIWindow(windowScene: windowScene)
        
        // Создаем экраны для вкладок
        
        // Экран для ленты
        let feedVC = FeedViewController()
        feedVC.title = "Feed"
        feedVC.view.backgroundColor = .systemGreen
        feedVC.tabBarItem.image = UIImage(named: "feed")
        
        // Экран для профиля пользователя
        let profileVC = ProfileViewController()
        profileVC.title = "Profile"
        profileVC.view.backgroundColor = .systemYellow
        profileVC.tabBarItem.image = UIImage(named: "person")
        
        // Создаем контроллер вкладок и устанавливаем экраны для вкладок
        let tabBarController = UITabBarController()
        let viewControllers = [feedVC, profileVC].map {
            UINavigationController(rootViewController: $0)
        }
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        // Устанавливаем цвет фона для таббара и выбираем первую вкладку
        tabBarController.tabBar.backgroundColor = UIColor.brown
        tabBarController.selectedIndex = 0
        
        // Устанавливаем контроллер вкладок в качестве корневого для окна приложения и делаем окно видимым
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        // Устанавливаем окно приложения
        self.window = window
    }
}
