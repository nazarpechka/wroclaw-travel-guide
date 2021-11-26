//
//  HotelsList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 26/11/2021.
//

import SwiftUI

struct HotelsList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(modelData.hotels) { hotel in
                    NavigationLink(
                        destination: Link("Move to hotel", destination:URL(string:"https://pasibus.pl/en/")!)) {
                        HotelRow(hotel: hotel)
                    }
                }
            }
            .padding()
        }
        .foregroundColor(.black)
        .navigationBarTitle(Text("Hotels"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct HotelsList_Previews: PreviewProvider {
    static var previews: some View {
        HotelsList()
            .environmentObject(ModelData())
    }
}
