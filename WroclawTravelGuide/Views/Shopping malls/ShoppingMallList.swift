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
                    image: Image("pasaz-logo"),
                    shadowColor: Color("pasaz-shadow")
                )
                
                ShoppingMallButton(
                    image: Image("wroclavia-logo"),
                    shadowColor: Color("wroclavia-shadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingMallButton(
                    image: Image("arkady-logo"),
                    shadowColor: Color("arkady-shadow")
                )
                
                ShoppingMallButton(
                    image: Image("magnolia-logo"),
                    shadowColor: Color("default-shadow")
                )
                
            }
            
            HStack(spacing: 20) {
                ShoppingMallButton(
                    image: Image("dominikanska-logo"),
                    shadowColor: Color("default-shadow")
                )
                
                ShoppingMallButton(
                    image: Image("renoma-logo"),
                    shadowColor: Color("default-shadow")
                )
                
            }
        
            Spacer()
        }
        .navigationBarTitle(Text("Shopping Malls"))
        .padding()
    }
}

struct ShoppingMallList_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallList()
    }
}
