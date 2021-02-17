//
//  MoviesService.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 16/02/21.
//

import Foundation

class MovieService {
    
    var session: URLSession!
    
    init() {
        self.session = URLSession.shared
    }
    
    func get(completion: @escaping ([Movie]) -> Void) {
        
        let request = URLRequest(url: urlMovie)
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if let _ = error {
                completion([])
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                completion([])
                return
            }
            
            guard let json = data else {
                completion([])
                return
            }
            
            do {
                let movies = try JSONDecoder().decode(MovieList.self, from: json)
                
                DispatchQueue.main.async {
                    completion(movies.results)
                }
                
            } catch {
                print(error)
                completion([])
            }
        }
        
        dataTask.resume()
        
    }
    
}


