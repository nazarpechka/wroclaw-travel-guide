//
//  RestaurantRow.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 17/11/2021.
//

import SwiftUI

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        ZStack {
            Color.white
            
            HStack(spacing: 0) {
                restaurant.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)

                VStack {
                    HStack {
                        Text(restaurant.name)
                            .font(.headline)
                        Spacer()
                        
                        Text(restaurant.price)
                            .font(.headline)
                    }
                    Spacer()
                    HStack {
                        Text(restaurant.type)
                        Spacer()
                    }
                    HStack {
                        Text(restaurant.adress)
                        Spacer()
                        Text(restaurant.distance)
                        
                    }
                    
                }
                .padding(10)
            }
        }
        .frame(width: 344, height: 100)
        .cornerRadius(15)
        .shadow(color: Color("default-shadow"), radius: 15, x: 5, y: 10)
    }
    
    struct RestaurantRow_Previews: PreviewProvider {
        static var previews: some View {
            RestaurantRow(restaurant: ModelData().restaurants[0])
        }
    }
}
