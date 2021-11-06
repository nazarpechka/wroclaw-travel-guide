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
            VStack(spacing: 20) {
                ForEach(modelData.attractions) { attraction in
                    NavigationLink(
                        destination: AttractionDetail(attraction: attraction)) {
                        AttractionRow(attraction: attraction)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle(Text("Places to visit"))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct AttractionList_Previews: PreviewProvider {
    static var previews: some View {
        AttractionList()
            .environmentObject(ModelData())
    }
}
