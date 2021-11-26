//
//  ShoppingMallButton.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingMallButton: View {
    var mall: Mall
    
    var body: some View {
        mall.icon
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 160, maxHeight: 160)
            .cornerRadius(15)
            .shadow(color: mall.shadow, radius: 10, x: 0, y: 10)
    }
}


struct ShoppingMallButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallButton(mall: ModelData().malls[0])
    }
}
