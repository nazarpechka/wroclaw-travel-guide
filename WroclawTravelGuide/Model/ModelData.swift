//
//  ModelData.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.11.2021.
//

import Foundation
import Combine
import SwiftUI

final class ModelData: ObservableObject {
    @Published var attractions: [Attraction] = decode(loadFile("attractionsData.json"))
    @Published var malls: [Mall] = decode(loadFile("mallsData.json"))
    @Published var restaurants: [Restaurant] = decode(loadFile("restaurantsData.json"))
    @Published var hotels: [Hotel] = decode(loadFile("hotelsData.json"))
    @Published var weatherInfo: WeatherInfo = decode(loadURL("https://api.openweathermap.org/data/2.5/weather?q=Wroclaw,pl&APPID=cfc186d360b6183d2efa05df0eb38497&units=metric"))
    @ObservedObject var locationManager: LocationManager = LocationManager()
}


func loadFile(_ filename: String) -> Data {

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        return try Data(contentsOf: file);
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
}

func loadURL(_ urlString: String) -> Data {
    if let url = URL(string: urlString) {
        if let data = try? Data(contentsOf: url) {
            print(data)
            return data
        }
    }
    fatalError("Couldn't load \(urlString)")
}

func decode<T: Decodable>(_ data: Data) -> T {
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(T.self):\n\(error)")
    }
}


