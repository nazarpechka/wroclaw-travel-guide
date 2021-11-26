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
            HStack(spacing: 0) {
                restaurant.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)

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
                        Text(restaurant.distance)
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
    
    struct RestaurantRow_Previews: PreviewProvider {
        static var previews: some View {
            RestaurantRow(restaurant: ModelData().restaurants[0])
        }
    }
}
