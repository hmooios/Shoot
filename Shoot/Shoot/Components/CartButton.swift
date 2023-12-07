//
//  CartButton.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 07/12/2023.
//

import SwiftUI


struct CartButton: View {
    var numberOfCamera: Int
    
    var body: some View {
        ZStack {
            Image(systemName: "cart")
                //.font(.title)
              //  .foregroundColor(.blue) // Adjust color based on your app's theme
            
            if numberOfCamera > 0 {
                Circle()
                    .fill(Color.red) // Highlight with a contrasting color
                    .frame(width: 18, height: 18)
                    .overlay(
                        Text("\(numberOfCamera)")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    )
                    .offset(x: 10, y: -10) // Adjust position based on your design
            }
        }
    }
}


#Preview {
    CartButton(numberOfCamera: 1)
}
