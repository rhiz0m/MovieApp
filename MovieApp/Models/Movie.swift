//
//  Movie.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-18.
//

import Foundation

struct MovieResponse: Codable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Codable {
    let title: String
    let year: String
    let imdbId: String
    let type: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "ImdbID"
        case type = "Type"
        case poster = "Poster"
    }
}

/**
 Structure example
 
 object = Movie response
 search/movies = [Movie]
 
object  {
    Search [
        Title: "Batman Begins"
        Year: "2005"
        imdbID: "tt0372784"
        Type: "movie"
        Poster: "url"
        ]
 }

 **/
