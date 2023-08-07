//
//  CategoryHome.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 03/08/2023.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List {
                PageView(pages: ModelData().features.map {
                    FeatureCard(landmark: $0)})
                .aspectRatio(3/2,contentMode: .fit)
                .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
            .listStyle(.inset)
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
