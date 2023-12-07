//
//  CameraRow.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 07/12/2023.
//

import SwiftUI

struct CameraRow: View {
    var camera: Camera
    @EnvironmentObject var cameraManager: CameraManager
    
    var body: some View {
        HStack {
            Image(camera.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(camera.name)
                    .font(.headline)
                    .bold()
                
                Text("$\(camera.price)")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Button(action: {
                cameraManager.removeCamera(camera: camera)
            }) {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

struct CameraRow_Previews: PreviewProvider {
    static var previews: some View {
        CameraRow(camera: cameraLists[0])
            .environmentObject(CameraManager())
    }
}


