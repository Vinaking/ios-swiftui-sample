//
//  FeatureCard.swift
//  SwiftUIDemo
//
//  Created by Tùng on 16/04/2024.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.7), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
            .foregroundColor(.white)
        }
    }
}

#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
