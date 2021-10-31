//
//  ShoppingPage.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingPage: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                ShoppingButton(
                    image: Image("pasaz_logo"),
                    shadowColor: Color("PasazShadow")
                )
                
                ShoppingButton(
                    image: Image("wroclavia_logo"),
                    shadowColor: Color("WroclaviaShadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingButton(
                    image: Image("arkady_logo"),
                    shadowColor: Color("ArkadyShadow")
                )
                
                ShoppingButton(
                    image: Image("magnolia_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingButton(
                    image: Image("dominikanska_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
                ShoppingButton(
                    image: Image("renoma_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
            }
        
            Spacer()
        }
        .padding(.top, 35)
    }
}

struct ShoppingPage_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingPage()
    }
}
