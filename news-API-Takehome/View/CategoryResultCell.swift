//
//  CategoryResultCell.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/29/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class CategoryResultCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.numberOfLines = 2
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "description"
        return label
    }()
    
//    let imageView: UIImageView = {
//        let image = UIImageView()
//        image.image  = UIImage(data: <#T##Data#>)
//    }
    func setup(){
            setupSubview()
            setupConstraints()
            
        }
        func setupSubview() {
            addSubview(titleLabel)
        }
        
        func setupConstraints() {
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70).isActive = true
            titleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
            
        }
    
}
