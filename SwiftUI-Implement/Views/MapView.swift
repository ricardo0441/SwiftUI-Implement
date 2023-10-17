//
//  MapView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coodinate = CLLocationCoordinate2D(latitude: 13.705731, longitude: -89.2445968)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.10, longitudeDelta: 0.10)
        
        let region = MKCoordinateRegion(center: coodinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
        
        
        
//        /@13.705731,-89.2445968,14.8z?entry=ttu
    }
}

#Preview {
    MapView()
}
