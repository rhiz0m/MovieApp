//
//  ImageLoader.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-18.
//

import Foundation

class ImageLoader: ObservableObject {
    
    @Published var downloadableData: Data?
    
    func downloadImage(url: String) {
        
        guard let imageUrl = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: imageUrl) { data, _, error in
            
            guard let data = data, error == nil else { return }
            
            DispatchQueue.main.async {
                self.downloadableData = data
            }
            
        }.resume()
    }
}
