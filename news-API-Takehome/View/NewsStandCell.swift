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
    
    var button: UIButton = {
        let button = UIButton()
        button.setTitle("DummyData", for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .gray
        return button
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        setupSubview()
        setupConstraints()
        
    }
    func setupSubview() {
        addSubview(button)
    }
    
    func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 16).isActive = true
        
    }
}
