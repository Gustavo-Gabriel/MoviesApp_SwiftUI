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

struct Movie: Codable, Hashable {
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

#if DEBUG
    
let testDataMovies = [
    Movie(poster_path: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg",
          adult: false,
          overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
          release_date: "2016-08-03",
          genre_ids: [14, 28, 80],
          id: 297761,
          original_title: "Suicide Squad",
          original_language: "en",
          title: "Suicide Squad",
          backdrop_path: "/ndlQ2Cuc3cjTL7lTynw6I4boP4S.jpg",
          popularity: 48.261451,
          vote_count: 1466,
          video: false,
          vote_average: 5.91),
    
    Movie(poster_path: "/lFSSLTlFozwpaGlO31OoUeirBgQ.jpg",
          adult: false,
          overview: "The most dangerous former operative of the CIA is drawn out of hiding to uncover hidden truths about his past.",
          release_date: "2016-07-27",
          genre_ids: [28, 53],
          id: 324668,
          original_title: "Jason Bourne",
          original_language: "en",
          title: "Jason Bourne",
          backdrop_path: "/AoT2YrJUJlg5vKE3iMOLvHlTd3m.jpg",
          popularity: 30.690177,
          vote_count: 649,
          video: false,
          vote_average: 5.25)
]

let testDataListMovies = [
    MovieList(page: 1, results: testDataMovies, total_results: testDataMovies.count, total_pages: 1)
]

#endif
