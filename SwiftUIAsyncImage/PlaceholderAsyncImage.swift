//
//  PlaceholderAsyncImage.swift
//  SwiftUIAsyncImage
//
//  Created by Oleksii on 22.10.2024.
//

import SwiftUI

struct PlaceholderAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill").iconModifier()
        }
        .padding(40)
    }
}

#Preview {
    PlaceholderAsyncImage()
}
