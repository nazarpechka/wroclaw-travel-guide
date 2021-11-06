//
//  HomeView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Wroclaw Travel Guide")
                    .font(.system(.largeTitle, design: .rounded))
                
                
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        HomeButton(
                            image: Image("places-icon"),
                            label: "Places to visit",
                            backgroundColor: Color("places-color"),
                            destination: AttractionList())
                        
                        HomeButton(
                            image: Image("yourstay-icon"),
                            label: "Your stay",
                            backgroundColor: Color("yourstay-color"),
                            destination: Text("test"))
                    }
                    
                    HStack(spacing: 20) {
                        HomeButton(
                            image: Image("food-icon"),
                            label: "Food",
                            backgroundColor: Color("food-color"),
                            destination: Text("test"))
                        
                        HomeButton(
                            image: Image("shopping-icon"),
                            label: "Shopping",
                            backgroundColor: Color("shopping-color"),
                            destination: ShoppingMallList())
                    }
                }
                
                
                WeatherInfo(image: Image(systemName: "cloud.sun"), label: "Cloudy", temp: 15)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Home")
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
