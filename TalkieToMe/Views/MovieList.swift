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
        }
    }
}

#Preview {
    let movies = Movie.sampleData
    MovieList(movies: movies)
}
