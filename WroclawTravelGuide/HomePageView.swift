//
//  HomePageView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Wroclaw Travel Guide")
                .font(.largeTitle)
            
            HStack(spacing: 20) {
                CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"))
                
                CategoryButton(image: Image("yourstaylogo"), label: "Your stay", backgroundColor: Color("YourStayColor"))
                    
            }
            
            HStack(spacing: 20) {
                CategoryButton(image: Image("foodlogo"), label: "Food", backgroundColor: Color("FoodColor"))
                
                CategoryButton(image: Image("shoppinglogo"), label: "Shopping", backgroundColor: Color("ShoppingColor"))
                
            }
            
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width-30,
               alignment: .center)
        .padding()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
