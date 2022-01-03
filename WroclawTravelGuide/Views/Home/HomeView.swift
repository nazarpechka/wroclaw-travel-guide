//
//  HomeView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {

                Text("Wroclaw Travel Guide")
                    .font(.system(.largeTitle, design: .rounded))


                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        NavigationLink(destination: AttractionList()) {
                            HomeButton(
                                image: Image("places-icon"),
                                label: "Places to visit",
                                backgroundColor: Color("places-color"))
                        }

                        NavigationLink(destination: HotelList()) {
                            HomeButton(
                                image: Image("yourstay-icon"),
                                label: "Your stay",
                                backgroundColor: Color("yourstay-color"))
                        }
                    }

                    HStack(spacing: 20) {
                        NavigationLink(destination: RestaurantList()) {
                            HomeButton(
                                image: Image("food-icon"),
                                label: "Food",
                                backgroundColor: Color("food-color"))
                        }

                        NavigationLink(destination: ShoppingMallList()) {
                            HomeButton(
                                image: Image("shopping-icon"),
                                label: "Shopping",
                                backgroundColor: Color("shopping-color"))
                        }
                    }
                }


                WeatherView()
                VStack(){
                    FactCard(label:"Wroclaw has over 600 gnome sculptures hidden around the city")
                    FactCard(label:"Wroclaw has one of the oldest restaurants in Europe")
                    FactCard(label:"Wroclaw has over 112 bridges in the city")
                    FactCard(label:"Wroclaw is home to the tallest residential building in Polandy")
                    FactCard(label:"Wroclaw has the second largest Market Square in Poland")
                }
                .padding(0)

                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
            
        }
        .onAppear() {
            modelData.locationManager.startUpdating()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
