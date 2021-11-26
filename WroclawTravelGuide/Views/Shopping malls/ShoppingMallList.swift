//
//  ShoppingMallList.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 30/10/2021.
//

import SwiftUI

struct ShoppingMallList: View {
    @EnvironmentObject var modelData: ModelData
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                LazyVGrid(columns: twoColumnGrid, spacing: 20) {
                    ForEach(modelData.malls) { mall in
                        NavigationLink(destination: ShoppingMallDetail(mall: mall)) {
                            ShoppingMallButton(mall:mall)
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle(Text("Shopping Malls"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ShoppingMallList_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallList()
            .environmentObject(ModelData())
    }
}
