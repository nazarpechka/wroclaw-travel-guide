//
//  HomePageView.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            Text("Wroclaw Travel Guide")
                .font(.largeTitle)
            
            HStack() {
                CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"), shadowColor: Color("PlacesShadowColor"))
                
                CategoryButton(image: Image("yourstaylogo"), label: "Your stay", backgroundColor: Color("YourStayColor"), shadowColor: Color("PlacesShadowColor"))
                    
            }
            
            Spacer()
        }
        .padding()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
