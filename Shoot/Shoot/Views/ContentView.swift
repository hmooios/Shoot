//
//  ContentView.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 06/12/2023.
//


import SwiftUI

struct ContentView: View {
    @StateObject var cameraManager = CameraManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(cameraLists, id: \.id) { camera in
                        CameraCard(camera: camera)
                            .environmentObject(cameraManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Camera lists")
            .toolbar{
                NavigationLink {
                    CartView( numberOfProducts: cameraManager.cameras.count)
                        .environmentObject(cameraManager)
                } label: {
                    CartButton(numberOfCamera: cameraManager.cameras.count)
                }

            }
        }
    }
}


#Preview {
    ContentView()
}
