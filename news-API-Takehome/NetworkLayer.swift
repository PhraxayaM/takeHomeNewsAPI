//
//  NetworkLayer.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/29/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class NetworkLayer {
    public static let shared = NetworkLayer()
    
    func fetch(category: String, completionHandler: @escaping (_ articleModel: ArticleModel) -> ()) {
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=\(category)&apiKey=98c1aead9a274a9ba1f52dfb217c04df")!
        
        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }
            
            if let response = response as? HTTPURLResponse, let data = data {
                if response.statusCode == 200  && response.mimeType == "application/json"{
                    print("Success: \(response.statusCode)")
                    let articleModel = try? JSONDecoder().decode(ArticleModel.self, from: data)
                    DispatchQueue.main.async {
                        completionHandler(articleModel!)
                    }
                }
            }
            
        }
        session.resume()
    }
}

