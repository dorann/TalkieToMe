//
//  PreviewContainer.swift
//  TalkieToMe
//
//  Created by dermetma on 9/6/25.
//

import Foundation
import SwiftData
import SwiftUI

struct MovieSampleData: PreviewModifier {
    static func makeSharedContext() async throws -> ModelContainer {
        let container = try ModelContainer(for: Movie.self, configurations: .init(isStoredInMemoryOnly: true))
        Movie.sampleData.forEach { container.mainContext.insert($0) }
        return container
    }
    
    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
    
}

extension PreviewTrait where T == Preview.ViewTraits {
    @MainActor static var movieSampleData: Self = .modifier(MovieSampleData())

}
