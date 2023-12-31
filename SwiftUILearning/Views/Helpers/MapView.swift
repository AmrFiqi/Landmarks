//
//  MapView.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 31/07/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates)
            }
    }
    
    private func setRegion(_ coordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion (
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 30.466160, longitude: 31.179310))
    }
}
