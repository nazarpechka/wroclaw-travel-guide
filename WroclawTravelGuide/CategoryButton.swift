//
//  CategoryButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct CategoryButton: View {
    var image: Image
    var label: String
    var backgroundColor: Color
    var shadowColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                image
                Text(label)
            }
            
        }
        .frame(width: 162, height: 143)
        .background(backgroundColor)
        .foregroundColor(.black)
        .font(.headline)
        .cornerRadius(15)
        .shadow(color: shadowColor, radius: 5, x: 0, y: 10)
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"), shadowColor: Color("PlacesShadowColor"))
    }
}
