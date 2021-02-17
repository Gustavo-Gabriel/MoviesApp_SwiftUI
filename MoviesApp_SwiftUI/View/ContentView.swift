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
        
        NavigationView{
            List{
                ForEach(movies, id: \.self){ movie in
                    MovieTrendingView(movie: movie)
                }
            }.onAppear{
                MovieService().get{ (movies) in
                    self.movies = movies
                }
            }
            .navigationTitle("Movies")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movies: testDataListMovies[0].results)
    }
}
