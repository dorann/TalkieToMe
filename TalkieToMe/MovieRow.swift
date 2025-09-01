//
//  MovieRow.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI

struct MovieRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("theconference")
                .resizable()
                .frame(width: 75, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            VStack(alignment: .leading) {
                HStack {
                    Text("The Conference")
                        .font(.headline)
                    Spacer()
                    Text("Sep 1")
                        .font(.subheadline)
                }
                Text("2025")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MovieRow()
}
