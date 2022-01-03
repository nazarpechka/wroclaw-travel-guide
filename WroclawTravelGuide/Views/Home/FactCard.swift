//
//  FactCard.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 20/12/2021.
//

import SwiftUI

struct FactCard: View {
    var label: String
    var body: some View {
            HStack {
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    
                
                Text(label)
                    .font(.headline)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                Spacer()
            }
            .frame(maxWidth: .infinity, minHeight: 50)
            .cornerRadius(15)
            .shadow(color: Color("button-shadow-color"), radius: 5, x: 5, y: 10)
        
    }
}

struct FactCard_Previews: PreviewProvider {
    static var previews: some View {
        FactCard(label: "Places to visit")
    }
}
