//
//  MovieHome.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI

struct MovieHome: View {
    let movies: [Movie]

    var body: some View {
        VStack {
            Text("To Watch")
                .font(.title3)
                .bold()
            MovieList(movies: movies)
        }

    }
}

#Preview {
    let movies = Movie.sampleData
    MovieHome(movies: movies)
}
