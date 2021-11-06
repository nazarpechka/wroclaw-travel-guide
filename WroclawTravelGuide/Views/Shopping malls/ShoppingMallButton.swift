//
//  ShoppingMallButton.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingMallButton: View {
    var image: Image
    var shadowColor: Color

    var body: some View {
        
        NavigationLink(destination: Text("Hello")) {
            VStack {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
            }
        }
        .buttonStyle(ShoppingMallButtonStyle(shadowColor: shadowColor))
    }
}

struct ShoppingMallButtonStyle: ButtonStyle {
    var shadowColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .cornerRadius(15)
            .shadow(color: shadowColor, radius: 25, x: 0, y: 10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}


struct ShoppingMallButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallButton(image: Image("dominikanska_logo"), shadowColor: Color("ShadowColor"))
    }
}
