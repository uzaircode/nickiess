//
//  ProductViewController.swift
//  nickiess
//
//  Created by Nik Uzair on 25/12/2024.
//

import UIKit

private let reuseIdentifier = "cellId"

class ProductViewController: UIViewController {
  
  //MARK: - Properties
  let tableView: UITableView = {
    let tv = UITableView()
    tv.backgroundColor = UIColor.white
    return tv
  }()
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTableView()
  }
  
  //MARK: - Selectors
  
  //MARK: - API
  
  //MARK: - Helpers
  private func setupTableView() {
    tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.identifier)
    tableView.delegate = self
    tableView.dataSource = self
    
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
    ])
  }
}

extension ProductViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as? ProductTableViewCell else {
      fatalError("The tableview could not dequeue a cell in viewController")
    }
    
    cell.configure(with: UIImage(systemName: "photo.artframe")!, and: indexPath.row.description)
    return cell
  }
}
