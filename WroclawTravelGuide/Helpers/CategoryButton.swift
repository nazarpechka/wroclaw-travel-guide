//
//  CategoryButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct CategoryButton<TargetView: View>: View {
    var image: Image
    var label: String
    var backgroundColor: Color
    var destination: TargetView
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(label)
                    .foregroundColor(.black)
                    .font(.headline)
            }
        }
        .buttonStyle(CategoryButtonStyle(backgroundColor: backgroundColor))
    }
}

struct CategoryButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(backgroundColor)
            .cornerRadius(15)
            .shadow(color: Color("ShadowColor"), radius: 5, x: 5, y: 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"), destination: Text("Test"))
    }
}
