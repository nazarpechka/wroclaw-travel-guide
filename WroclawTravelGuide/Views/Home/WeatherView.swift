//
//  WeatherView.swift
//  Wroclaw Travel Guide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct WeatherView: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        HStack() {
            AsyncImage(url: URL(string: "https://openweathermap.org/img/wn/" + modelData.weatherInfo.weatherStatus.icon + "@2x.png")!) { image in
                image
                    .resizable()
                    .scaledToFit()
                    
            } placeholder: {
                ProgressView()
            }
            .frame(width: 45, height: 45)
            
            Text("\(modelData.weatherInfo.weatherStatus.main) \(modelData.weatherInfo.temp, specifier: "%.2f")°")
                .font(.headline)
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .environmentObject(ModelData())
    }
}
