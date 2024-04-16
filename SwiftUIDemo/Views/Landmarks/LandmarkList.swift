//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Tùng on 08/04/2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filterdLandmarks: [Landmark] {
        modelData.landmarks.filter{ $0.isFavorite || !showFavoriteOnly }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorite only")
                })
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .animation(.easeInOut, value: filterdLandmarks)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("")
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
