//
//  MovieTrendingView.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 17/02/21.
//

import SwiftUI

struct MovieTrendingView: View {
    
    var movie: Movie
    
    var body: some View {
        VStack{
            Text(movie.title)
                .padding()
            Text(movie.overview)
                .padding()
                .multilineTextAlignment(.leading)
        }
    }
}

struct MovieTrendingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTrendingView(movie: testDataMovies[0])
    }
}
