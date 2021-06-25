//
//  ViewController.swift
//  bertrand-course-rx
//
//  Created by Lau on 22/06/2021.
//

import UIKit


class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    
    var stackView = UIStackView()
    
    let label: CustomLabel
    let button: CustomButton
    
    // MARK: - Properties
    
    
    
    // MARK: - Initializer

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.label = CustomLabel(color: .brown, textFont: Constant.font.font20)
        self.button = CustomButton()
        
        stackView.addArrangedSubview(self.label)
        stackView.addArrangedSubview(self.button)
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
      
    }
    
    // MARK: - Action

    // MARK: - Private Functions
    
    private func setUpView() {
        view.addSubview(label)
        view.addSubview(button)
        
        createConstraints()
        
        view.backgroundColor = .white
        label.text = "Hello"
        button.setTitle("Notife me", for: .normal)
        button.backgroundColor = .blue
        
    }
    
    private func createConstraints() {
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    }




}

