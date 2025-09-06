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
    
    @State private var searchText: String = ""
    @State private var createNewMovie = false
    
    private var movieCount: Int {
        movies.count
    }

    var body: some View {
        NavigationStack {
            List {
                Section(header: MovieListHeaderView(movieCount: movies.count)) {
                    ForEach(movies) { movie in
                        MovieRow(movie: movie)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    }
                }
            }
            .listStyle(.grouped)
            .searchable(text: $searchText)
            .navigationTitle("To Watch")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Text("Edit")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        createNewMovie = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $createNewMovie) {
                NewMovieView()
            }
        }
    }
}

#Preview {
    let movies = Movie.sampleData
    MovieList(movies: movies)
}
