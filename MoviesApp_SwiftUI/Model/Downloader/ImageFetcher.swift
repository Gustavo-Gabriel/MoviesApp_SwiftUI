//
//  ImageFetched.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 17/02/21.
//

import Foundation
import SwiftUI
import Combine

class ImageFetcher{
    
    var didChange = PassthroughSubject<Data, Never>()
    
    var data: Data = Data(){
        didSet{
            didChange.send(data)
        }
    }
    
    init(urlString: String) {
    
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                self.data = data
            }
            
        }.resume()

    }
}
