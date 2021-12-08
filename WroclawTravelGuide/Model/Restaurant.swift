//
//  Restaurant.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 17/11/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Restaurant: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var price: String
    var type: String
    var adress: String
    
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
    
    var url: String
}
