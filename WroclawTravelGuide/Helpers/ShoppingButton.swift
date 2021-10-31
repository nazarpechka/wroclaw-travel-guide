//
//  ShoppingButton.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingButton: View {
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
        .buttonStyle(ShoppingButtonStyle(shadowColor: shadowColor))
    }
}

struct ShoppingButtonStyle: ButtonStyle {
    var shadowColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .cornerRadius(15)
            .shadow(color: shadowColor, radius: 25, x: 0, y: 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}


struct ShoppingButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingButton(image: Image("dominikanska_logo"), shadowColor: Color("ShadowColor"))
    }
}
