//
//  AnimationAsyncImage.swift
//  SwiftUIAsyncImage
//
//  Created by Oleksii on 22.10.2024.
//

import SwiftUI

struct AnimationAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        AsyncImage(url: URL(string: imageURL),
                   transaction: Transaction(animation: .spring(response: 0.5,
                                                               dampingFraction: 0.6,
                                                               blendDuration: 0.25))) { phase in
            switch phase {
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            case .success(let image):
                image
                    .imageModifier()
                // .transition(.move(edge: .bottom))
                // .transition(.slide)
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

#Preview {
    AnimationAsyncImage()
}
