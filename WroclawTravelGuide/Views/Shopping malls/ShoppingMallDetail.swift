//
//  ShoppingMallDetail.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 08/11/2021.
//

import SwiftUI

struct ShoppingMallDetail: View {
    var mall: Mall
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25){
                mall.image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                VStack(spacing: 25) {
                    VStack(alignment: .leading) {
                        Text(mall.name)
                            .font(.largeTitle)
                        
                        HStack {
                            Text("Currently closed")
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                    
                    Button {
                        print("Open shop map button is pressed")
                    } label: {
                        Text("Open shops map")
                            .foregroundColor(.black)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(.white)
                                    .frame(minWidth: 300, maxWidth: .infinity, maxHeight: 40)
                                    .cornerRadius(15)
                                    .shadow(color: Color("default-shadow"), radius: 10, x: 0, y: 10)
                            )
                    }
                    
                    Text(mall.description)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct ShoppingMallDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMallDetail(mall: ModelData().malls[0])
    }
}
