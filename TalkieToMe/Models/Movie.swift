//
//  Movie.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import Foundation
import SwiftData
import SwiftUICore

@Model
class Movie: Identifiable {
    var id: UUID
    var title: String
    var rating: String
    var releaseYear: Int
    var runtime: Int
    var dateWatched: Date?
    var dateAdded: Date
    
    var image: Image {
        var convertedTitle = title.lowercased().replacingOccurrences(of: " ", with: "")
        convertedTitle.removeAll(where: { !$0.isLetter })
        return Image(convertedTitle)
    }
    
    var formattedRuntime: String {
        let runtimeHours = runtime / 60
        let runtimeMinutes = runtime % 60
        return String("\(runtimeHours)h \(runtimeMinutes)m")
    }
    
    init(id: UUID = UUID(), title: String, rating: String, releaseYear: Int, runtime: Int, dateWatched: Date? = nil) {
        self.id = id
        self.title = title
        self.rating = rating
        self.releaseYear = releaseYear
        self.runtime = runtime
        self.dateAdded = Date()
        self.dateWatched = dateWatched
    }
}
