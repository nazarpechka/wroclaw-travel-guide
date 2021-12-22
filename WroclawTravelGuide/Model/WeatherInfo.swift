//
//  WeatherInfo.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 22.12.2021.
//

import Foundation
import SwiftUI

struct WeatherInfo: Hashable, Codable {
    var name: String
    private var weather: [WeatherStatus]
    var weatherStatus: WeatherStatus {
        weather[0]
    }
    private var main: WeatherTemp
    var temp: Float {
        main.temp
    }
}

struct WeatherStatus: Hashable, Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

struct WeatherTemp: Hashable, Codable {
    var temp: Float
}
