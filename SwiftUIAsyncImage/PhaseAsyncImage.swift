//
//  PhaseAsyncImage.swift
//  SwiftUIAsyncImage
//
//  Created by Oleksii on 22.10.2024.
//

import SwiftUI

struct PhaseAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { phase in
            // SUCCESS: The image successfully loaded.
            // FAILURE: The image failed to load with an error
            // EMPTY: No image is laoded
            if let image = phase.image {
                image.imageModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            } else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }
        .padding(40)
    }
}

#Preview {
    PhaseAsyncImage()
}
