//
//  ContentView.swift
//  SwiftUILearningDemoApp
//
//  Created by Imran Sayeed on 8/9/22.
//

import SwiftUI

struct ContentView: View {
    private let data: [AllAppsModel] = AllAppsModel.sampleApps()
    var colors: [Color] = [.red, .green, .blue, .purple]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    @State private var appType: AppsType = .unknown
    @State private var tapped: Bool = false
//    private func getDestination() {
//
//    }
    
    var body: some View {
        NavigationView {
            ScrollView {
//                NavigationLink("Pinch & Zoom", destination: )
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(data, id: \.id) { item in
                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(colors.randomElement())
                                .cornerRadius(30)
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                            Text("\(item.name)")
                                .foregroundColor(.white)
                                .font(.system(.title, design: .rounded))
                                .padding(8)
                                .multilineTextAlignment(.center)
                        }
                        .onTapGesture {
                            
                            tapped = true
                        }
                    }
                }
                .background(
                    NavigationLink(destination: PinchAndZoomView(), isActive: $tapped) {
                        EmptyView()
                    }
                )
            }
            .padding()
            .navigationTitle("All Apps")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
