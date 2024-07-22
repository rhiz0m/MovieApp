//
//  HTTPClient.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-18.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case noData
    case decodingError
}

class HTTPClient {
    
    func getMoviesBy(search: String, completion: @escaping (Result<[Movie]?, NetworkError>) -> Void) {
        
        guard let url = URL.forMoviesByName(search)
        else {
            return completion(.failure(.badURL))
        }
        
        // Get the data back
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
         
        // Once we have the data and unwrapped it. we have to decode the data
            guard let movieResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                return completion(.failure(.decodingError))
            }
        
        // If all worked well
            completion(.success(movieResponse.movies))
            
        }.resume()
    }
}

/**
 Purpose of this service:
 
 1. Make a request to OMDB url
 2. Get the JSON
 3. Convert it the model
 4. Give a result in terms of model
 
 **/
