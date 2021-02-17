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
            
            LoadableImageView(with: "https://image.tmdb.org/t/p/original\(movie.backdrop_path ?? "")")
                .overlay(
                    VStack{
                        
                        Spacer()
                        
                        HStack{
                            Text(movie.title)
                                .padding()
                                .padding(.horizontal, 10)
                                .font(Font.title3.bold())
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        
                    }
                )
        }
    }
}

struct MovieTrendingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTrendingView(movie: testDataMovies[0])
    }
}
