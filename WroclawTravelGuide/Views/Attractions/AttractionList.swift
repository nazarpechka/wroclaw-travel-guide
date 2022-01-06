//
//  AttractionList.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 28.10.2021.
//

import SwiftUI

struct AttractionList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredAttractions: [Attraction] {
        modelData.attractions.filter { attraction in
            (!showFavoritesOnly || attraction.isFavorite)
        }
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(filteredAttractions) { attraction in
                    NavigationLink(
                        destination: AttractionDetail(attraction: attraction)) {
                            AttractionRow(attraction: attraction)
                        }
                }
            }
            .padding()
        }
        .navigationBarTitle(Text("Places to visit"))
        .navigationBarItems(trailing:(
        Toggle(isOn: $showFavoritesOnly) {
            Text("Favorites")
        }))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct AttractionList_Previews: PreviewProvider {
    static var previews: some View {
        AttractionList()
            .environmentObject(ModelData())
    }
}
