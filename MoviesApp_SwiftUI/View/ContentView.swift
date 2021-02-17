//
//  ContentView.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 16/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var movies: [Movie] = []
    
    var body: some View {
    
        List{
            ForEach(movies, id: \.self){ movie in
                Text(movie.title)
            }
        }
        .onAppear{
            MovieService().get{ (movies) in
                self.movies = movies
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
