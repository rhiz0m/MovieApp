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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Movie App!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
