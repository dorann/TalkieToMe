//
//  MovieListHeaderView.swift
//  TalkieToMe
//
//  Created by dermetma on 9/1/25.
//

import SwiftUI

struct MovieListHeaderView: View {
    var movieCount: Int
    
    var body: some View {
        HStack {
            Text("To Watch")
                .foregroundColor(.black)
            Text(String(movieCount))
                .padding(EdgeInsets(top: 2, leading: 7, bottom: 2, trailing: 7))
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 9))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    let movieCount: Int = 70
    MovieListHeaderView(movieCount: movieCount)
}
