//
//  Restaurant.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 17/11/2021.
//

import Foundation
import SwiftUI

struct Restaurant: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var price: String
    var type: String
    var adress: String
    var distance: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var url: String
}
