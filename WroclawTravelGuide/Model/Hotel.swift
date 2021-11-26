//
//  Hotel.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 26/11/2021.
//

import Foundation
import SwiftUI

struct Hotel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var price: String
    var stars: Int
    var reviews: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

