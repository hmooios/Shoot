//
//  CameraCard.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 06/12/2023.
//

import SwiftUI

struct CameraCard: View {
    var camera:Camera
    var body: some View {
            VStack{
                Image(camera.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .cornerRadius(10)
                ZStack{
//                    Rectangle()
//                        .foregroundColor(.white)
                    
                    HStack {
                        VStack(alignment:.leading){
                            Text(camera.name)
                                .bold()
                            Text("$\(camera.price)")
                                .font(.subheadline)
                            

                        }
                        Spacer()
                        Image(systemName: "cart.badge.plus")
                            .padding(1)
                                                        
                            
                    }
                   

                }
                .frame(width: 180,height: 40)
                .padding()

                
            }
         //   .shadow(radius: 2)
            
        
    }
}

#Preview {
    CameraCard(camera: cameraLists[0])
}
