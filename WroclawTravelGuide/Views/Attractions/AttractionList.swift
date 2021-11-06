//
//  AttractionList.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct AttractionList: View {
    var body: some View {
        NavigationView {
            VStack {
                AttractionRow(image: Image("Rectangle 22"), label: "Market Square")
                
                Spacer()
            }
        }
        .navigationBarTitle(Text("Places to visit"), displayMode: .inline)
        .padding()
    }
}

struct AttractionList_Previews: PreviewProvider {
    static var previews: some View {
        AttractionList()
    }
}
