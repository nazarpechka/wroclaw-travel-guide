//
//  HotelRow.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 26/11/2021.
//

import SwiftUI

struct HotelRow: View {
    var hotel: Hotel

    var body: some View {
        ZStack {
            Color.white
            
            HStack(spacing:20) {
                hotel.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                
                VStack {
                    HStack {
                        Text(hotel.name)
                            .font(.headline)
                        
                        Spacer()
                        
                        ForEach(1...hotel.stars, id: \.self) {
                            star in Image(systemName: "star.fill").foregroundColor(.yellow).frame(width: 12, height: 12)
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("\(hotel.reviews) reviews")
                        
                        Spacer()
                        
                        Text("\(hotel.price) PLN")
                    }
                }
                .padding(10)
            }
        }
        .frame(width: 344, height: 100)
        .cornerRadius(15)
        .shadow(color: Color("default-shadow"), radius: 15, x: 5, y: 10)
    }
}

struct HotelRow_Previews: PreviewProvider {
    static var previews: some View {
        HotelRow(hotel: ModelData().hotels[0])
    }
}
