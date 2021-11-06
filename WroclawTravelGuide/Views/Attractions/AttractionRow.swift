//
//  AttractionRow.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct AttractionRow: View {
    var image: Image
    var label: String
    
    var body: some View {
        ZStack() {
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 344, maxWidth: .infinity, minHeight: 135, maxHeight: 135)
            
            LinearGradient(gradient: Gradient(colors: [Color("dark-gradient"), Color.black.opacity(0.0)]), startPoint: .bottom,
                           endPoint: .top)
            
            VStack {
                Spacer()
                HStack {
                    Text(label)
                        .font(.headline)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 5)
                
            }
        }
        .frame(minWidth: 344, maxWidth: .infinity, minHeight: 135, maxHeight: 135)
        .cornerRadius(15)
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(image: Image("Rectangle 22"), label: "Market Square")
    }
}
