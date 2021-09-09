//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by thinh on 11/17/20.
//  Copyright © 2020 thinh. All rights reserved.
//

import Foundation

class NetworkManager : ObservableObject {
    @Published var posts = [Post]()
    func fetchData() {
        print("fetch")
        let url = URL(string:"https://hn.algolia.com/api/v1/search?tags=front_page")!
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, _, error) in
            if(error != nil) {
                print(error)
                return;
            }
            let decoder = JSONDecoder()
            if let safeData = data {
                let result = try? decoder.decode(Result.self, from: safeData)
                guard let data = result else {
                    return
                }
                DispatchQueue.main.async {
                    self.posts = data.hits
                }
            }
            
        }
        task.resume()
        
    }
}
