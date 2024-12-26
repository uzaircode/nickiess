//
//  LoginViewController.swift
//  nickiess
//
//  Created by Nik Uzair on 25/12/2024.
//

import UIKit

class LoginViewController: UIViewController {
  
  //MARK: - Properties
  private lazy var emailContainerView: UIView = {
    let container = UIView()
    container.heightAnchor.constraint(equalToConstant: 50).isActive = true
    container.translatesAutoresizingMaskIntoConstraints = false
    container.addSubview(emailTextField)
    NSLayoutConstraint.activate([
      emailTextField.topAnchor.constraint(equalTo: container.topAnchor, constant: 8),
      emailTextField.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 12),
      emailTextField.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -12),
      emailTextField.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8)
    ])
    return container
  }()
  
  private let emailTextField: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Email"
    tf.autocapitalizationType = .none
    tf.borderStyle = .roundedRect
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
  }()
  
  private lazy var passwordContainerView: UIView = {
    let passwordField = UIView()
    passwordField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    passwordField.translatesAutoresizingMaskIntoConstraints = false
    passwordField.addSubview(passwordTextField)

    NSLayoutConstraint.activate([
      passwordTextField.topAnchor.constraint(equalTo: passwordField.topAnchor, constant: 8),
      passwordTextField.leftAnchor.constraint(equalTo: passwordField.leftAnchor, constant: 12),
      passwordTextField.rightAnchor.constraint(equalTo: passwordField.rightAnchor, constant: -12),
      passwordTextField.bottomAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: -8)
    ])
    return passwordField
  }()
  
  private let passwordTextField: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Password"
    tf.isSecureTextEntry = true
    tf.borderStyle = .roundedRect
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
  }()
  
  private let loginButton: UIButton = {
    let button = UIButton()
    button.setTitle("Login", for: .normal)
    button.tintColor = .white
    button.layer.cornerRadius = 10
    button.layer.masksToBounds = true
    button.heightAnchor.constraint(equalToConstant: 56).isActive = true
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = .systemBlue
    return button
  }()
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupUI()
  }
  
  //MARK: - Selectors
  @objc private func handleLogin() {
    print("Login button tapped..")
    navigationController?.setViewControllers([TabBarViewController()], animated: true)
  }
  
  //MARK: - API
  
  
  //MARK: - Helpers
  private func setupUI() {
    
    let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
    stack.axis = .vertical
    stack.spacing = 8
    
    stack.translatesAutoresizingMaskIntoConstraints = false
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
    
    view.addSubview(stack)
    view.addSubview(loginButton)
    
    NSLayoutConstraint.activate([
      stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      stack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
      stack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
      
      loginButton.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 24),
      loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
      loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
    ])
  }
}
