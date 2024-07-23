//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-23.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListViewModel: MovieListViewModel
    @State var movieName: String = ""
    
    init(movieListViewModel: MovieListViewModel) {
        self.movieListViewModel = movieListViewModel
    }
    
    var body: some View {
        VStack {
            TextField(
                "Search",
                text: $movieName,
                onEditingChanged: {_ in},
                onCommit: {
                    self.movieListViewModel.searchByName(self.movieName)
                })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            
            MovieListView(movies: self.movieListViewModel.movies)
                .navigationTitle("Movies")
        }
        .embedNavigationView()
    }
}

#Preview {
    MovieListScreen(movieListViewModel: MovieListViewModel())
}
