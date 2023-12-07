//
//  CartView.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 07/12/2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cameraManager: CameraManager
    var numberOfProducts:Int

    var body: some View {
        if numberOfProducts > 0{
            List {
                ForEach(cameraManager.cameras, id: \.id) { camera in
                    CameraRow(camera: camera)
                }
                
                // Total cost section
                Section {
                    HStack {
                        Text("Total")
                            .font(.headline)
                            .bold()
                        Spacer()
                        Text("$\(cameraManager.total).00")
                            .font(.headline)
                            .bold()
                    }
                }
            }
            .navigationTitle("Shopping Cart")
        } else{
            Text("Your cart is empty.")
        }
    }
    
  
}



#Preview {
    CartView(numberOfProducts: 1)
        .environmentObject(CameraManager())
}
