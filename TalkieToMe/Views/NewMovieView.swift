//
//  NewMovieView.swift
//  TalkieToMe
//
//  Created by dermetma on 9/6/25.
//

import SwiftUI

struct NewMovieView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var rating: String = ""
    @State private var releaseYear: Int = 0
    @State private var runtime: Int = 0

    var body: some View {
        NavigationStack {
            Form {
                Section("Title") {
                    TextField("Title", text: $title)
                }
                Section("Additional Information") {
                    TextField("Rating", text: $rating)
                    TextField("Year Released", value: $releaseYear, formatter: NumberFormatter())
                    TextField("Runtime", value: $runtime, formatter: NumberFormatter())
                }
            }
            .navigationTitle("Add Movie")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        let newMovie = Movie(title: title, rating: rating, releaseYear: releaseYear, runtime: runtime)
                        context.insert(newMovie)
                        dismiss()
                    } label: {
                        Text("Create")
                    }
                    .disabled(title.isEmpty)
                }
            }
        }
    }
}

#Preview {
    NewMovieView()
}
