//
//  NewsStandCell.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class NewsStandCell: UICollectionViewCell {
    
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST"
        label.textAlignment = .center
        label.numberOfLines = 3
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 10
        self.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        setupSubview()
        setupConstraints()
        
    }
    func setupSubview() {
//        addSubview(button)
        addSubview(categoryLabel)
    }
    
    func setupConstraints() {
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        categoryLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
   
        
    }
}
