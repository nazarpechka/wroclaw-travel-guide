//
//  WeatherInfo.swift
//  Wroclaw Travel Guide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct WeatherInfo: View {
    var image: Image
    var label: String
    var temp: Int
    
    var body: some View {
        HStack() {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
            Text("\(label) \(temp)°")
        }
    }
}

struct WeatherInfo_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfo(image: Image(systemName: "cloud.sun"), label: "Cloudy", temp: 15)
    }
}
