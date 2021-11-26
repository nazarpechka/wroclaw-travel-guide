//
//  HomeButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomeButton: View {
    var image: Image
    var label: String
    var backgroundColor: Color

    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(label)
                .foregroundColor(.black)
                .font(.headline)
        }
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(color: Color("button-shadow-color"), radius: 5, x: 5, y: 10)
        
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(image: Image("places-icon"), label: "Places to visit", backgroundColor: Color("places-color"))
    }
}
