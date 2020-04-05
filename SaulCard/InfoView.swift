//
//  InfoView.swift
//  SaulCard
//
//  Created by Saul Rivera on 04/04/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .frame(width: 300, height: 45, alignment: .center)
            .cornerRadius(50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
        )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
