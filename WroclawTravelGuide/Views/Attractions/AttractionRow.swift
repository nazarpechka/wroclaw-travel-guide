//
//  AttractionRow.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct AttractionRow: View {
    var attraction: Attraction
    
    var body: some View {
        attraction.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity, maxHeight: 135)
            .overlay(LinearGradient(gradient: Gradient(colors: [Color("dark-gradient"), Color.black.opacity(0.0)]), startPoint: .bottom,
                                    endPoint: .top).overlay(Text(attraction.name)
                                                                .font(.headline)
                                                                .foregroundColor(.white)
                                                                .padding(.horizontal)
                                                                .padding(.vertical, 5), alignment: .bottomLeading))
            .cornerRadius(15)
            .shadow(color: Color("default-shadow"), radius: 5, x: 5, y: 10)
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction: ModelData().attractions[0])
    }
}
