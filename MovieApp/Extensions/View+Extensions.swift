//
//  View+Extensions.swift
//  MovieApp
//
//  Created by Andreas Antonsson on 2024-07-23.
//

import Foundation
import SwiftUI

// Extension that Surrouding the current View with Navigation View

extension View {
    func embedNavigationView() -> some View{
        return NavigationView { self }
    }
}
