//
//  LandmarkRow.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 31/07/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: ModelData().landmarks[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
