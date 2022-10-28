//
//  StartButtonView.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 10/29/22.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button {
            print("Start button action")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
