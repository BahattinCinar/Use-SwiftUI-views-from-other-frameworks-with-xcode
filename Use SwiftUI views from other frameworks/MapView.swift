//
//  MapView.swift
//  Use SwiftUI views from other frameworks
//
//  Created by Behaüddin Çınar on 9.02.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 41.025584170245814, longitude: 28.974118362733556),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.001)
        )
    }
}

#Preview {
    MapView()
}
