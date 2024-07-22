//
//  ContentView.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-17.
//

import SwiftUI

struct ContentView: View {
  
    
    var body: some View {
        VStack {
            Text("Movie App!")
                .onAppear {
                    HTTPClient().getMoviesBy(search: "Lord Of The Rings") { result in
                        switch result {
                        case .success(let movies):
                            print(movies)
                        case .failure(let error):
                            print(error)
                        }
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
