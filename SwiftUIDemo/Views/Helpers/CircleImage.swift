//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Tùng on 08/04/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
