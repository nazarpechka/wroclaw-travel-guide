//
//  AttractionDetail.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.11.2021.
//

import SwiftUI

struct AttractionDetail: View {
    @EnvironmentObject var modelData: ModelData
    var attraction: Attraction
    
    var timeString: String {
        attraction.visitTime >= 60 ? "\(attraction.visitTime / 60) hour" : "\(attraction.visitTime) min"
    }
    var attractionIndex: Int {
        modelData.attractions.firstIndex(where: { $0.id == attraction.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                ZStack {
                    attraction.fullImage
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 380)
                        .cornerRadius(25, corners: [.bottomLeft, .bottomRight])
                    FavoriteButton(isFavorite: $modelData.attractions[attractionIndex].isFavorite)
                        .offset(x: 150, y:175)
                        .shadow(color: Color("default-shadow"), radius: 20, x: 0, y: 10)
                }
                

                Group {
                    VStack(alignment: .leading) {
                        Text(attraction.name)
                            .font(.largeTitle)
                        
                        HStack {
                            Image(systemName: "clock")
                            Text(timeString)
                            
                            Spacer()
                            
                            Text(attraction.workingHours.isOpenNow() ? "Currently open" : "Currently closed")
                                .foregroundColor(attraction.workingHours.isOpenNow() ? .green : .red)
                        }
                    }
                    
                    Text(attraction.description)
                    
                    Link("Open in Maps", destination:URL(string:"comgooglemaps://?saddr=&daddr=\(attraction.locationCoordinate.latitude),\(attraction.locationCoordinate.longitude)")!)
                        .buttonStyle(GenericButton())
                    
                    MapView(coordinate: attraction.locationCoordinate)
                        .frame(height: 300)
                        .cornerRadius(5)
                }
                .padding(.horizontal)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct AttractionDetail_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetail(attraction: ModelData().attractions[0])
    }
}
