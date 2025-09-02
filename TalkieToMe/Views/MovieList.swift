//
//  MovieLIst.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    let movies: [Movie]

    var body: some View {
        List(movies) { movie in
            MovieRow(movie: movie)
                .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
        }
        .listStyle(.plain)
    }
}

#Preview {
    let movies = Movie.sampleData
    MovieList(movies: movies)
}
