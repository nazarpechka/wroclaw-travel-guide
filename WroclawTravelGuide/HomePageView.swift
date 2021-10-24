//
//  HomePageView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomePageView: View {
    
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Wroclaw Travel Guide")
                    .font(.largeTitle)
                
                
                VStack {
                    HStack(spacing: 20) {
                        CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"))
                        
                        CategoryButton(image: Image("yourstaylogo"), label: "Your stay", backgroundColor: Color("YourStayColor"))
                        
                    }
                    
                    HStack(spacing: 20) {
                        CategoryButton(image: Image("foodlogo"), label: "Food", backgroundColor: Color("FoodColor"))
                        
                        CategoryButton(image: Image("shoppinglogo"), label: "Shopping", backgroundColor: Color("ShoppingColor"))
                        
                    }
                    
                }
                
                
                
                HStack {
                    Image("cloudy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45, alignment: .center)
                    Text("Cloudy 15°")
                }
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width-30,
                   alignment: .center)
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
