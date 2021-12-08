//
//  RestaurantRow.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 17/11/2021.
//

import SwiftUI
import CoreLocation

struct RestaurantRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var restaurant: Restaurant
    var distance: String {
        
        let restaurantLocation = CLLocation(latitude: restaurant.locationCoordinate.latitude, longitude: restaurant.locationCoordinate.longitude)
        let userLocation = modelData.locationManager.lastKnownLocation ?? restaurantLocation
        let distance = Int(restaurantLocation.distance(from: userLocation))
        if distance == 0 {
            return ""
        } else if distance < 1000 {
            return "\(distance)m"
        } else {
            return "\((100 * Double(distance) / 1000).rounded() / 100)km"
        }
    }
    
    var body: some View {
        Link(destination: URL(string: restaurant.url)!) {
            ZStack {
                HStack(spacing: 0) {
                    restaurant.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(restaurant.name)
                                .font(.headline)
                            Spacer()
                            Text(restaurant.price)
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        Text(restaurant.type)
                        
                        HStack {
                            Text(restaurant.adress)
                            Spacer()
                            Text(distance)
                        }
                        
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                }
            }
            .foregroundColor(.black)
            .background(Color.white)
            .frame(maxWidth: .infinity, maxHeight: 100)
            .cornerRadius(15)
            .shadow(color: Color("default-shadow"), radius: 10, x: 5, y: 10)
        }
    }
    
    struct RestaurantRow_Previews: PreviewProvider {
        static var previews: some View {
            RestaurantRow(restaurant: ModelData().restaurants[1])
        }
    }
}
