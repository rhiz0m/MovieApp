//
//  Ratings.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-18.
//

import SwiftUI

struct Ratings: View {
    @Binding var rating: Int?
    
    private func startType(index: Int) -> String {
        
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...10, id: \.self) { index in
                Image(systemName: self.startType(index: index))
                    .foregroundColor(.green)
                    .onTapGesture {
                        self.rating = index
                        print("Rating set to \(index)")
                    }
            }
        }
    }
}

struct Ratings_Previews: PreviewProvider {
    @State static var rating: Int? = nil
    
    static var previews: some View {
        Ratings(rating: $rating)
    }
}
