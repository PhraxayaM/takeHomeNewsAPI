//
//  Arcticle.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

struct ArticleModel: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let source: Source
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let content: String?
    
}

struct Source: Decodable {
    let id: String?
    let name: String?
    
}

