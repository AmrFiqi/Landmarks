//
//  LandmarkList.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 31/07/2023.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
            .listStyle(.inset)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkList()
            .environmentObject(ModelData())
    }
}
