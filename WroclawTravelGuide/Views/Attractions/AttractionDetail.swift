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
                .ignoresSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: 313)
                
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
                .padding()
                
                VStack {
                    Text(attraction.description)
                }
                .padding()
                
                
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all)
        
        
        
        
        
    }
}

struct AttractionDetail_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetail(attraction: ModelData().attractions[0])
    }
}
