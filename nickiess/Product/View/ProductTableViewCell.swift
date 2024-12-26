//
//  ProductTableViewCell.swift
//  nickiess
//
//  Created by Nik Uzair on 25/12/2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
  
  //MARK: - Properties
  
  static let identifier = "productCell"
  
  private let image: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFit
    iv.image = UIImage(systemName: "questionmark")
    iv.tintColor = .label
    return iv
  }()
  
  private let title: UILabel = {
    let label = UILabel()
    label.textColor = .label
    label.font = .systemFont(ofSize: 24, weight: .medium)
    label.text = "Test"
    return label
  }()
  
  //MARK: - Lifecycle
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Selectors
  
  //MARK: - API
  
  //MARK: - Helpers
  
  public func configure(with image: UIImage, and label: String) {
    self.image.image = image
    self.title.text = label
  }
  
  private func setupUI() {
    self.contentView.addSubview(image)
    self.contentView.addSubview(title)
    
    image.translatesAutoresizingMaskIntoConstraints = false
    title.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      image.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
      image.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor),
      image.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor),
      image.heightAnchor.constraint(equalToConstant: 90),
      image.widthAnchor.constraint(equalToConstant: 90),
      
      title.leadingAnchor.constraint(equalTo: self.image.trailingAnchor, constant: 16),
      title.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
      title.topAnchor.constraint(equalTo: self.contentView.topAnchor),
      title.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
    ])
  }
}
