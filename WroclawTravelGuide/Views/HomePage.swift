//
//  HomePageView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Wroclaw Travel Guide")
                    .font(.system(.largeTitle, design: .rounded))
                
                
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        CategoryButton(
                            image: Image("placeslogo"),
                            label: "Places to visit",
                            backgroundColor: Color("PlacesColor"))
                        
                        CategoryButton(
                            image: Image("yourstaylogo"),
                            label: "Your stay",
                            backgroundColor: Color("YourStayColor"))
                        
                    }
                    
                    HStack(spacing: 20) {
                        CategoryButton(
                            image: Image("foodlogo"),
                            label: "Food",
                            backgroundColor: Color("FoodColor"))
                        
                        CategoryButton(
                            image: Image("shoppinglogo"),
                            label: "Shopping",
                            backgroundColor: Color("ShoppingColor"))
                    }
                }
                
                
                WeatherInfo(image: Image(systemName: "cloud.sun"), label: "Cloudy", temp: 15)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
