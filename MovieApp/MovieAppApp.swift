//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-17.
//

import SwiftUI

@main
struct MovieAppApp: App {
    
    @StateObject var movieListViewModel = MovieListViewModel()
    
    var body: some Scene {
        WindowGroup {
            MovieListScreen(movieListViewModel: movieListViewModel)
        }
    }
}
