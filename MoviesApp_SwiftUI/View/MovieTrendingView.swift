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
            
            LoadableImageView(with: "https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png")
        }
    }
}

struct MovieTrendingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTrendingView(movie: testDataMovies[0])
    }
}
