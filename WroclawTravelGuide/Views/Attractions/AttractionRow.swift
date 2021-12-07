//
//  AttractionRow.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI
import CoreLocation

struct AttractionRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var attraction: Attraction
    var distance: String {
        
        let attractionLocation = CLLocation(latitude: attraction.locationCoordinate.latitude, longitude: attraction.locationCoordinate.longitude)
        let userLocation = modelData.locationManager.lastKnownLocation ?? attractionLocation
        let distance = Int(attractionLocation.distance(from: userLocation))
        if distance == 0 {
            return ""
        } else if distance < 1000 {
            return "\(distance)m"
        } else {
            return "\((100 * Double(distance) / 1000).rounded() / 100)km"
        }
    }
    
    var body: some View {
        attraction.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity, maxHeight: 135)
            .overlay(LinearGradient(gradient: Gradient(colors: [Color("dark-gradient"), Color.black.opacity(0.0)]), startPoint: .bottom,
                                    endPoint: .top).overlay(
                                        HStack {
                                            Text(attraction.name)
                                                                    .font(.headline)
                                                                    .foregroundColor(.white)
                                                                    .padding(.horizontal)
                                                                    .padding(.vertical, 5)
                                            Spacer()
                                            Text(distance)
                                                                    .font(.headline)
                                                                    .foregroundColor(.white)
                                                                    .padding(.horizontal)
                                                                    .padding(.vertical, 5)
                                        }, alignment: .bottomLeading))
            .cornerRadius(15)
            .shadow(color: Color("default-shadow"), radius: 5, x: 5, y: 10)
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction: ModelData().attractions[0])
            .environmentObject(ModelData())
    }
}
