//
//  ShoppingMallList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingMallList: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                ShoppingMallButton(
                    image: Image("pasaz_logo"),
                    shadowColor: Color("PasazShadow")
                )
                
                ShoppingMallButton(
                    image: Image("wroclavia_logo"),
                    shadowColor: Color("WroclaviaShadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingMallButton(
                    image: Image("arkady_logo"),
                    shadowColor: Color("ArkadyShadow")
                )
                
                ShoppingMallButton(
                    image: Image("magnolia_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingMallButton(
                    image: Image("dominikanska_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
                ShoppingMallButton(
                    image: Image("renoma_logo"),
                    shadowColor: Color("DefaultShadow")
                )
                
            }
        
            Spacer()
        }
        .padding(.top, 35)
    }
}

struct ShoppingMallList_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallList()
    }
}
