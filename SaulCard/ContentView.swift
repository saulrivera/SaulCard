//
//  ContentView.swift
//  SaulCard
//
//  Created by Saul Rivera on 04/04/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.07, green:0.45, blue:0.87)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("saul")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 250)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Saúl Rivera")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+52 12 3456 7891", imageName: "phone.fill")
                InfoView(text: "saulriveal@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
