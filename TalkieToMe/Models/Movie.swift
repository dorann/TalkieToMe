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
    var runTime: Int
    var dateWatched: Date?
    var dateAdded: Date
    
    var image: Image {
        var convertedTitle = title.lowercased().replacingOccurrences(of: " ", with: "")
        convertedTitle.removeAll(where: { !$0.isLetter })
        return Image(convertedTitle)
    }
    
    var formattedRunTime: String {
        let runTimeHours = runTime / 60
        let runTimeMinutes = runTime % 60
        return String("\(runTimeHours)h \(runTimeMinutes)m")
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
