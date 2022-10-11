//
//  NetworkManager.swift
//  ANONews
//
//  Created by Fernando dos Santos Motta on 25/07/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Posts]()
    
    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if error == nil {
                let decoder = JSONDecoder()
                if let safeData = data {
                    do {
                        let results = try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    } catch {
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
}
