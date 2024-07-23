//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-23.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListViewModel: MovieListViewModel
    
    init(movieListViewModel: MovieListViewModel) {
        self.movieListViewModel = movieListViewModel
        self.movieListViewModel.searchByName("terminator")
    }
    
    var body: some View {
        VStack {
            MovieListView(movies: self.movieListViewModel.movies)
                .navigationTitle("Movies")
        }
        .embedNavigationView()
    }
}

#Preview {
    MovieListScreen(movieListViewModel: MovieListViewModel())
}
