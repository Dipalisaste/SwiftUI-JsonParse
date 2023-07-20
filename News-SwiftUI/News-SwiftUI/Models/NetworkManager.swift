//
//  NetworkManager.swift
//  News-SwiftUI
//
//  Created by ranjit dhumal on 20/07/23.
//

import Foundation

class NetworkManager :ObservableObject {
    
   @Published var posts:[Post] = []
    
    func fetchData(){
        let str = "https://jsonplaceholder.typicode.com/photos"
        let url = URL(string: str)
        
        URLSession.shared.dataTask(with: url!) {[unowned self] (data, response, error) in
            if error == nil {
                do{
                    let results = try JSONDecoder().decode([Post].self, from: data!)
                    DispatchQueue.main.async {
                        print("\(self.posts)")
                        self.posts = results
                    }
                }catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
