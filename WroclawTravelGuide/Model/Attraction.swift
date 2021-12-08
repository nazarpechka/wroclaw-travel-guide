//
//  Attraction.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.11.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Attraction: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var fullImageName: String
    var fullImage: Image {
        Image(fullImageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    var visitTime: Int
    var workingHours: WorkingHours
}
