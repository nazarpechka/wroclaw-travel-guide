//
//  RestaurantList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 22/11/2021.
//

import SwiftUI

struct RestaurantList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(modelData.restaurants) { restaurant in
                    NavigationLink(
                        destination: Link("Move to restaurant", destination:URL(string:"https://pasibus.pl/en/")!)) {
                            RestaurantRow(restaurant: restaurant)
                        }
                }
            }
            .padding()
        }
        .navigationBarTitle(Text("Restaurants"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantList()
            .environmentObject(ModelData())
    }
}
