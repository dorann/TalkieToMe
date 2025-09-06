//
//  TalkieToMeApp.swift
//  TalkieToMe
//
//  Created by dermetma on 8/31/25.
//

import SwiftUI
import SwiftData

@main
struct TalkieToMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Movie.self)
    }
}
