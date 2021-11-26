//
//  HotelList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 26/11/2021.
//

import SwiftUI

struct HotelList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(modelData.hotels) { hotel in
                    NavigationLink(
                        destination: Link("Move to hotel", destination:URL(string:"https://pasibus.pl/en/")!)) {
                            HotelRow(hotel: hotel)
                        }
                }
            }
            .padding()
        }
        .navigationBarTitle(Text("Hotels"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct HotelList_Previews: PreviewProvider {
    static var previews: some View {
        HotelList()
            .environmentObject(ModelData())
    }
}
