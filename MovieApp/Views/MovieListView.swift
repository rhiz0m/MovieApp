//
//  MovieListView.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-23.
//

import SwiftUI

struct MovieListView: View {
    
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId) { movie in
           MovieCell(movie: movie)
        }
    }
}

struct MovieCell: View {
    
    var movie: MovieViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            UrlImage(url: movie.poster)
                .frame(width: 100, height: 120)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.type)
                    .opacity(0.5)
                Text(movie.year)
                    .opacity(0.5)
            }
            .padding()
            Spacer()
        }
    }
}
