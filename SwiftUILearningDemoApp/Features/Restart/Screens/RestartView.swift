//
//  ContentView.swift
//  SwiftUIRestartAppDemo
//
//  Created by Imran Sayeed on 7/29/22.
//

import SwiftUI

struct RestartView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .navigationTitle("Restart View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RestartView_Previews: PreviewProvider {
    static var previews: some View {
        RestartView()
    }
}
