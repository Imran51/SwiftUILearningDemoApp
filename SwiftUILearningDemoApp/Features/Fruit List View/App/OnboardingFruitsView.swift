//
//  OnboardingView.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 10/29/22.
//

import SwiftUI

struct OnboardingFruitsView: View {
    var body: some View {
        TabView {
            ForEach(0..<4) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnboardingFruitsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFruitsView()
    }
}
