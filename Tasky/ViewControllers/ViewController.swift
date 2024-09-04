//
//  ViewController.swift
//  Tasky
//
//  Created by Matheus Franceschini on 03/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.logoRoxo)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var illustrationImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.ilustraçãoAbertura)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var subtitleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Prepare-se para conquistar o dia, uma lista de cada vez!"
        label.textColor = .darkPurple
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var startButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Vamos começar!", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        button.backgroundColor = .darkPurple
        button.layer.cornerRadius = 12
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientBackground()
        setup()
        // Do any additional setup after loading the view.
    }

    func setup() {
        view.addSubview(logoImageView)
        view.addSubview(illustrationImageView)
        view.addSubview(subtitleLabel)
        view.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            illustrationImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 8),
            illustrationImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: illustrationImageView.bottomAnchor, constant: 32),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
            
            startButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 64),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 240),
            startButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
    
    @objc func didTapStartButton(_ sender: UIButton) {
        navigationController?.pushViewController(TasksViewController(), animated: true)
    }

}

