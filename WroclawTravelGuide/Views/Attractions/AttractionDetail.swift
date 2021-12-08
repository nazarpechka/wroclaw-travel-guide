//
//  AttractionDetail.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.11.2021.
//

import SwiftUI

struct AttractionDetail: View {
    var attraction: Attraction
    var timeString: String {
        attraction.visitTime >= 60 ? "\(attraction.visitTime / 60) hour" : "\(attraction.visitTime) min"
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                ZStack {
                    attraction.fullImage
                        .resizable()
                        .scaledToFill()
                }
                .frame(maxWidth: .infinity, maxHeight: 300)
                .cornerRadius(25, corners: [.bottomLeft, .bottomRight])
                
                Group {
                    VStack(alignment: .leading) {
                        Text(attraction.name)
                            .font(.largeTitle)
                        
                        HStack {
                            Image(systemName: "clock")
                            Text(timeString)
                            
                            Spacer()
                            
                            Text("Currently open")
                                .foregroundColor(.green)
                        }
                        
                    }
                    
                    Text(attraction.description)
                    
                    Link("Open in Maps", destination:URL(string:"maps://?saddr=&daddr=\(attraction.locationCoordinate.latitude),\(attraction.locationCoordinate.longitude)")!)
                        .buttonStyle(GenericButton())
                    
                    MapView(coordinate: attraction.locationCoordinate)
                        .frame(height: 300)
                        .cornerRadius(5)
                }
                .padding(.horizontal)

                Spacer()
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
