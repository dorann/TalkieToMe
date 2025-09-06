//
//  MovieRow.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie

    var body: some View {
        HStack(alignment: .top) {
            movie.image
                .resizable()
                .frame(width: 75, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            VStack(alignment: .leading) {
                HStack {
                    Text(movie.title)
                        .font(.headline)
                    Spacer()
                    Text(String(movie.releaseYear))
                        .font(.subheadline)
                }
                HStack {
                    Text(movie.rating)
                    Text("•")
                    Text(movie.formattedRuntime)
                }
                .font(.subheadline)
            }
            Spacer()
        }
        .alignmentGuide(.listRowSeparatorLeading) { $0[.leading] }
    }
}

#Preview {
    let movie: Movie = Movie.sampleData[0]
    MovieRow(movie: movie)
}
