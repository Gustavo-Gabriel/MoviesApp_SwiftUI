//
//  Movie.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 16/02/21.
//

import Foundation

struct MovieList: Codable {
    var page: Int
    var results: [Movie]
    var total_results: Int
    var total_pages: Int
}

struct Movie: Codable {
    var poster_path: String?
    var adult: Bool
    var overview: String
    var release_date: String
    var genre_ids: [Int]
    var id: Int
    var original_title: String
    var original_language: String
    var title: String
    var backdrop_path: String?
    var popularity: Double
    var vote_count: Int
    var video: Bool
    var vote_average: Double
}
