//
//  URL+Extensions.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-22.
//

import Foundation

extension URL {
    static func forMoviesByName(_ name: String) -> URL? {
        URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
}
