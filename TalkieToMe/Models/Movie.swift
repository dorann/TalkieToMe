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
    // Consider computing xh ym format
    var runTime: Int
    var dateWatched: Date?
    var dateAdded: Date
    
    var image: Image {
        let convertedTitle = title.lowercased().replacingOccurrences(of: " ", with: "")
        return Image(convertedTitle)
    }
    
    init(id: UUID = UUID(), title: String, rating: String, releaseYear: Int, runTime: Int, dateWatched: Date? = nil) {
        self.id = id
        self.title = title
        self.rating = rating
        self.releaseYear = releaseYear
        self.runTime = runTime
        self.dateAdded = Date()
        self.dateWatched = dateWatched
    }
}
