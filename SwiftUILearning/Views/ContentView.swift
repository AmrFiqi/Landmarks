//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 30/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    @StateObject private var modelData = ModelData()
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
