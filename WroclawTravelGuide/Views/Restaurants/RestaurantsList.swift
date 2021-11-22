//
//  RestaurantsList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 22/11/2021.
//

import SwiftUI

struct RestaurantsList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(modelData.restaurants) { restaurant in
                    NavigationLink(
                        destination: Link("Move to restaurant", destination:URL(string:"https://pasibus.pl/en/")!)) {
                        RestaurantRow(restaurant: restaurant)
                    }
                }
            }
            .padding()
        }
        .foregroundColor(.black)
        .navigationBarTitle(Text("Restaurants"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RestaurantsList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsList()
            .environmentObject(ModelData())
    }
}
