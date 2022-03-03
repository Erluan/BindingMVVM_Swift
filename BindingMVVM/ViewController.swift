//
//  ViewController.swift
//  BindingMVVM
//
//  Created by Erluan Felix Batista on 03/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    @objc func login() {
        
    }
    
    private func setupUI() {
        
        let usernameTextField = UITextField()
        usernameTextField.placeholder = "Enter Username"
        usernameTextField.backgroundColor = UIColor.lightGray
        usernameTextField.borderStyle = .roundedRect
        
        let passwordTextField = UITextField()
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.backgroundColor = UIColor.lightGray
        passwordTextField.borderStyle = .roundedRect
        
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor.gray
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [usernameTextField, passwordTextField, loginButton])
        stackView.translatesAutoresizingMaskIntoConstraints = true
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        
        self.view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }


}

