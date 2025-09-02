//
//  MovieListHeaderView.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI

struct MovieListHeaderView: View {
    var movieCount: Int
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    private var textColor: Color {
        colorScheme == .dark ? .white : .black
    }
    
    var body: some View {
        HStack {
            Text("To Watch")
                .foregroundColor(textColor)
                .bold()
            Text(String(movieCount))
                .padding(EdgeInsets(top: 2, leading: 7, bottom: 2, trailing: 7))
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 9))
                .foregroundColor(.white)
            Spacer()
            Button {
                
            } label: {
                Text("Sort")
                Image(systemName: "arrow.up.arrow.down")
            }
            .font(.caption)
        }
    }
}

#Preview {
    let movieCount: Int = 70
    MovieListHeaderView(movieCount: movieCount)
}
