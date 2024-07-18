//
//  UrlImage.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-18.
//

import SwiftUI

struct UrlImage: View {
    @ObservedObject var imageLoader = ImageLoader()
    
    let url: String
    let placeholder: String
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    
    var body: some View {
        if let data = self.imageLoader.downloadableData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}

#Preview {
    UrlImage(url: "")
}
