//
//  CategoryResultView.swift
//  news-API-TakeHome
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class CategoryResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    var mainView = MainView()
    var articles: [Article]!
    
    override func viewDidLoad() {
           super.viewDidLoad()
//           view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
           setup()
//        mainView.tableView.register(self, forCellReuseIdentifier: "cell")
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        mainView.tableView.register(CategoryResultCell.self, forCellReuseIdentifier: "cell")
       }

       func setup() {
           setupView()

       }
    
       func setupView() {
           let mainViews = MainView(frame: self.view.frame)
           self.mainView = mainViews
           self.view.addSubview(mainView)

       }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoryResultCell
            cell.backgroundColor = .red
                    cell.backgroundColor = .blue
            cell.titleLabel.text = articles[indexPath.row].title
//            cell.textLabel = "test"
//            cell.textLabel?.text = NetworkLayer.shared.fetch(category: <#T##String#>)
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
