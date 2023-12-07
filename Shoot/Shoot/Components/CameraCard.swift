//
//  CameraCard.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 06/12/2023.
//

import SwiftUI

struct CameraCard: View {
    @EnvironmentObject var cameraManager: CameraManager
    var camera: Camera
    
    var body: some View {
        VStack(spacing: 8) {
            Image(camera.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(camera.name)
                    .font(.headline)
                    .bold()
                
                HStack {
                    Text("$\(camera.price)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Button(action: {
                        cameraManager.addCamera(camera: camera)
                    }, label: {
                        Image(systemName: "cart.badge.plus")
                                                  .padding(8)
                                                  .foregroundColor(.black) // Text color
                                                  .overlay(
                                                      Capsule(style: .continuous)
                                                          .stroke(Color.black, lineWidth: 1)
                                                  )
                    })
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}


#Preview {
    CameraCard(camera: cameraLists[0])
}
