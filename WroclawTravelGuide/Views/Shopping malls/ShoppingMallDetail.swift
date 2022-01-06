//
//  ShoppingMallDetail.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 08/11/2021.
//

import SwiftUI

struct ShoppingMallDetail: View {
    var mall: Mall
    @State var showDetailView = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25){
                mall.image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .cornerRadius(25, corners: [.bottomLeft, .bottomRight])
                
                VStack(spacing: 25) {
                    VStack(alignment: .leading) {
                        Text(mall.name)
                            .font(.largeTitle)
                        
                        HStack {
                            Text(mall.workingHours.isOpenNow() ? "Currently open" : "Currently closed")
                                .foregroundColor(mall.workingHours.isOpenNow() ? .green : .red)
                            Spacer()
                        }
                        
                    }
                    
                    Button {
                        self.showDetailView = true
                    } label: {
                        Text("Shops list")
                    }
                    .buttonStyle(GenericButton())
                    
                    Text(mall.description)
                    
                    Link("Open in Maps", destination:URL(string:"comgooglemaps://?saddr=&daddr=\(mall.locationCoordinate.latitude),\(mall.locationCoordinate.longitude)")!)
                        .buttonStyle(GenericButton())
                    
                    MapView(coordinate: mall.locationCoordinate)
                        .frame(height: 300)
                        .cornerRadius(5)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .sheet(isPresented: self.$showDetailView) {
            ShopsList(shops: mall.shops)
        }
        .ignoresSafeArea(.all)
        
    }
        
}

struct ShoppingMallDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallDetail(mall: ModelData().malls[0])
    }
}
