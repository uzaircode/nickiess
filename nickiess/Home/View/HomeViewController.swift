//
//  HomeViewController.swift
//  nickiess
//
//  Created by Nik Uzair on 25/12/2024.
//

import UIKit


class HomeViewController: UICollectionViewController {
  //MARK: - Properties
  
  private let reusableIdentifier = "Cell"
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reusableIdentifier)
    setupUI()
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 12
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reusableIdentifier, for: indexPath)
    cell.backgroundColor = .systemBlue
    return cell
  }

  //MARK: - Selectors
  
  //MARK: - API
  
  //MARK: - Helpers
  private func setupUI() {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: (view.frame.size.width/2) - 2, height: (view.frame.size.width/2) - 2)
    layout.minimumLineSpacing = 2
    layout.scrollDirection = .vertical
    layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    layout.minimumInteritemSpacing = 1
    collectionView.collectionViewLayout = layout
  }
}
