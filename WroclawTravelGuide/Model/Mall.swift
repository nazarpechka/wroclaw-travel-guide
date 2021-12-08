//
//  Mall.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 08/11/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Mall: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    
    private var iconName: String
    var icon: Image {
        Image(iconName)
    }
    
    private var shadowColor: String
    var shadow: Color {
        Color(shadowColor)
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
