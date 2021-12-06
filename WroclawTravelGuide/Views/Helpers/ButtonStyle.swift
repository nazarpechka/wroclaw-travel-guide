//
//  ButtonStyle.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.12.2021.
//

import SwiftUI


struct GenericButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.black)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40)
                    .cornerRadius(15)
                    .shadow(color: Color("default-shadow"), radius: 10, x: 0, y: 10)
            )
    }
    
}
