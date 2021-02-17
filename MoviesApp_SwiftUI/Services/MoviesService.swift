//
//  MoviesService.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 16/02/21.
//

import Foundation

let url = "https://api.themoviedb.org/3/search/movie?api_key=ad9408b6ab6ea7841f75c62d89c765ad&language=en-US&query=logan&page=1&include_adult=false"

func getRequest(url: String, completation: @escaping ([String: Any]?, Error?) -> Void){
    
    guard let URL = URL(string: url) else {
        completation(nil, nil)
        return
    }
    
    let request = NSMutableURLRequest(url: URL)
    request.httpMethod = "GET"
    
    let task = URLSession.shared.dataTask(with: request as URLRequest){ (data, response, error) in
        
        do {
            if let data = data {
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                completation(response as? [String: Any], nil)
            }else {
                completation(nil, nil)
            }
        } catch let error as NSError {
            completation(nil, error)
        }
    }
    
    task.resume()
}

