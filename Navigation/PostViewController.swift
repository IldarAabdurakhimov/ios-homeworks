import UIKit

class PostViewController: UIViewController {
    
    var selectedPost: String? // переменная для хранения текста выбранного поста
    
    private lazy var label: UILabel = { // ленивое свойство для создания UILabel
        let label = UILabel()
        label.text = selectedPost // устанавливаем текст в label из переменной selectedPost
        label.textAlignment = .center // центрируем текст внутри label
        label.font = UIFont.systemFont(ofSize: 24) // устанавливаем шрифт для текста внутри label
        label.translatesAutoresizingMaskIntoConstraints = false // отключаем автоматические констрейнты для label
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let infoButton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(infoButtonTapped))  // создаем и устанавливаем кнопку "Info" в правом верхнем углу навигационной панели
        navigationItem.rightBarButtonItem = infoButton
        view.backgroundColor = .systemPink
        title = selectedPost
        view.addSubview(label) // добавляем label на главную view
        constrPost() // вызываем функцию для установки констрейнтов
        
        
    }
    
    
    private func constrPost() {
        // устанавливаем констрейнты для label, центрируя его по вертикали и располагая слева с отступом 20 и справа с отступом 30
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            label.heightAnchor.constraint(equalToConstant: 30) // устанавливаем высоту label равной 30
        ])
    }
    
    @objc private func infoButtonTapped() {
        let infoViewController = InfoViewController() // создаем экземпляр контроллера InfoViewController
        let navController = UINavigationController(rootViewController: infoViewController) // создаем UINavigationController с текущим контроллером в качестве корневого
        present(navController, animated: true, completion: nil) // отображаем navController с анимацией
    }
}
