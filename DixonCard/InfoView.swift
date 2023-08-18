//
//  InfoView.swift
//  DixonCard
//
//  Created by Dixon A on 14/08/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.white)
            .frame(width: 350, height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                Text(text).foregroundColor(.black).bold()
            })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "globe")
            .previewLayout(.sizeThatFits )
    }
}
