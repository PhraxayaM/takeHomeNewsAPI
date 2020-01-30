//
//  MainViewController.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit


class NewsStandViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    
    let categoryName = ["Business", "Entertainment", "Health", "Science", "Tech", "Sports"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(NewsStandCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.backgroundColor = .white
        setupNavBar()
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width/2 - 40, height: self.view.frame.height/3 - 125)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 80, left: 35, bottom: 20, right: 35)
    }
    
    // MARK: - UICollectionViewDataSource Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 6
        return categoryName.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! NewsStandCell
        
//        cell.backgroundColor = .blue
        cell.categoryLabel.text = categoryName[indexPath.row]
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        NetworkLayer.shared.fetch(category: categoryName[indexPath.row]) { (articleModel) in
            let resultVC = CategoryResultViewController()
            resultVC.articles = articleModel.articles
            self.navigationController?.pushViewController(resultVC, animated: true)
        }
    }
    
    func setupNavBar() {
        self.title = "News Stand"
        self.navigationItem.searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    
    
}
