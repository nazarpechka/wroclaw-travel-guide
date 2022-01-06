//
//  ShopsList.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.01.2022.
//

import SwiftUI

struct ShopsList: View {
    var shops: [String]
    @State var searchQuery = ""
    var filteredShops: [String] {
        if searchQuery.isEmpty {
            return shops
        } else {
            return shops.filter { $0.lowercased().prefix(searchQuery.count) == searchQuery.lowercased() || $0.contains(searchQuery) }
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredShops.sorted(), id: \.self) { shop in
                Text(shop)
            }
            .searchable(text: $searchQuery)
            .navigationBarHidden(false)
            .navigationTitle("Shops")
        }
    }
}

struct ShopsList_Previews: PreviewProvider {
    static var previews: some View {
        ShopsList(shops: ["Shop 1"])
    }
}
