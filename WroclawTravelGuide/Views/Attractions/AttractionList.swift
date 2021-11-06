//
//  AttractionList.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct AttractionList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(modelData.attractions) { attraction in
                NavigationLink(destination: Text("Hello")) {
                    AttractionRow(attraction: attraction)
                }
            }
        }
        .navigationBarTitle(Text("Places to visit"), displayMode: .inline)
        .padding(.horizontal)
        .padding(.bottom)
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct AttractionList_Previews: PreviewProvider {
    static var previews: some View {
        AttractionList()
            .environmentObject(ModelData())
    }
}
