//
//  HomeButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomeButton<TargetView: View>: View {
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
        .buttonStyle(HomeButtonStyle(backgroundColor: backgroundColor))
    }
}

struct HomeButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(backgroundColor)
            .cornerRadius(15)
            .shadow(color: Color("shadow-color"), radius: 5, x: 5, y: 10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(image: Image("places-icon"), label: "Places to visit", backgroundColor: Color("places-color"), destination: Text("Test"))
    }
}
