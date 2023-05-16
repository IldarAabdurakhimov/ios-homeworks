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
        view.addSubview(label)
        
        let button = UIButton(type: .system)
        button.setTitle("Show UIAlertController", for: .normal)
        button.addTarget(self, action: #selector(showAlertController), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 30),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func showAlertController() {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let firstAction = UIAlertAction(title: "Action 1", style: .default) { _ in
            print("Action 1 button tapped")
        }
        alertController.addAction(firstAction)
        
        let secondAction = UIAlertAction(title: "Action 2", style: .default) { _ in
            print("Action 2 button tapped")
        }
        alertController.addAction(secondAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
