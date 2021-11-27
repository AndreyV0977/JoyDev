//
//  Data.swift
//  JoyDev
//
//  Created by Kitsune on 26.11.2021.
//

import SwiftUI

struct Post: Codable, Identifiable{
    let id = UUID()
    var title: String
    var body: String
}

class Api{
    func getPost(complation: @escaping([Post]) -> ()){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        URLSession.shared.dataTask(with: url!) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                complation(posts)
            }
           
        }
        .resume()
    }
}
