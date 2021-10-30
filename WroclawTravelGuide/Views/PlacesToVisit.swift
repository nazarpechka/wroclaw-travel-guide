//
//  PlacesToVisit.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct PlacesToVisit: View {
    var body: some View {
        NavigationView {
            VStack {
                PlacesToVisitRow(image: Image("Rectangle 22"), label: "Market Square")
                
                Spacer()
            }
        }
        .navigationBarTitle(Text("Places to visit"), displayMode: .inline)
        .padding()
    }
}

struct PlacesToVisit_Previews: PreviewProvider {
    static var previews: some View {
        PlacesToVisit()
    }
}
