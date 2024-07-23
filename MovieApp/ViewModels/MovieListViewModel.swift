//
//  MovieViewModel.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-23.
//

import Foundation
import SwiftUI

class MovieListViewModel: ObservableObject {
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(_ name: String) {
        httpClient.getMoviesBy(search: name) { result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies = movies.map(MovieViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}

struct MovieViewModel {
    
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var type: String {
        movie.type
    }
    
    var year: String {
        movie.year
    }
}
