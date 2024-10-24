//
//  BasicImageURL.swift
//  SwiftUIAsyncImage
//
//  Created by Oleksii on 22.10.2024.
//

import SwiftUI

struct BasicAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        AsyncImage(url: URL(string: imageURL))
    }
}

#Preview {
    BasicAsyncImage()
}
