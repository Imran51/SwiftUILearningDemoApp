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
        GridItem(.adaptive(minimum: FrameHelper.size.width))
    ]
    
    struct FrameHelper {
        static let size: CGSize = CGSize(width: 170, height: 170)
        static let radius: CGFloat = 30
        static let textPadding: CGFloat = 8
    }
    
    @State private var appType: AppsType = .unknown
    @State private var tapped: Bool = false
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(data, id: \.id) { item in
                            ZStack {
                                Rectangle()
                                    .frame(width: FrameHelper.size.width, height: FrameHelper.size.height)
                                    .foregroundColor(.clear)
                                    .cornerRadius(FrameHelper.radius)
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: FrameHelper.size.width, height: FrameHelper.size.height)
                                    .cornerRadius(FrameHelper.radius)
                                Text("\(item.name)")
                                    .foregroundColor(.black)
                                    .font(.system(.title, design: .rounded))
                                    .padding(FrameHelper.textPadding)
                                    .multilineTextAlignment(.center)
                            }
                            .onTapGesture {
                                appType = item.type
                                tapped = true
                            }
                        }
                    }
                    .background(
                        NavigationLink(destination: DestinationView(appType: appType), isActive: $tapped) {
                            EmptyView()
                        }
                    )
                }
                .opacity(isAnimating ? 1 : 0)
                .animation(.easeOut(duration: 1), value: isAnimating)
                
            }
            .padding()
            .navigationTitle("All Apps")
            .navigationBarTitleDisplayMode(.inline)
            .background(
                Color("ColorBlue")
                    .ignoresSafeArea(.all, edges: .all)
            )
            .onAppear {
                isAnimating = true
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DestinationView: View {
    @State var appType: AppsType
    
    var body: some View {
        switch appType {
        case .pinchAndZoom:
            return AnyView(PinchAndZoomView())
        case .restart:
            return AnyView(RestartView())
        case .other:
            return AnyView(PinchAndZoomView())
        case .unknown:
            return AnyView(PinchAndZoomView())
        }
    }
}
