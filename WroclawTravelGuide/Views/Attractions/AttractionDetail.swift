//
//  AttractionDetail.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.11.2021.
//

import SwiftUI

struct AttractionDetail: View {
    var attraction: Attraction
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                ZStack {
                    Image("market-square-full")
                        .resizable()
                        .scaledToFill()
                    
                }
                .padding(0)
                .frame(maxWidth: .infinity, maxHeight: 300)
                
                Group {
                    VStack(alignment: .leading) {
                        Text(attraction.name)
                            .font(.largeTitle)
                        
                        HStack {
                            Image(systemName: "clock")
                            Text("1 hour")
                            
                            Spacer()
                            
                            Text("Currently open")
                                .foregroundColor(.green)
                        }
                        
                    }
                    
                    Text(attraction.description)
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
