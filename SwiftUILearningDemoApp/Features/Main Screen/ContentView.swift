//
//  ContentView.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 8/9/22.
//

import SwiftUI

struct ContentView: View {
    private let data: [AllAppsModel] = AllAppsModel.sampleApps()
    var colors: [Color] = [.red, .green, .blue, .yellow]
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(data, id: \.id) { item in
                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 180)
                                .foregroundColor(.yellow)
                                .cornerRadius(30)
                            Text("\(item.name)")
                                .foregroundColor(.white)
                                .font(.system(.title, design: .rounded))
                                .padding(8)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("All Apps")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
