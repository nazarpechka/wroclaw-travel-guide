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
                ZStack {
                    Image("pasaz")
                        .resizable()
                        .scaledToFill()
                }
                .padding(0)
                .ignoresSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: 313)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(mall.name)
                        .font(.largeTitle)
                    
                    HStack {
                        Text("Currently closed")
                            .foregroundColor(.red)
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        Button {
                            print("Open shop map button is pressed")
                        } label: {
                            Text("Open shops map")
                                .foregroundColor(.black)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 300, maxWidth: .infinity, maxHeight: 37)
                                        .cornerRadius(15)
                                        .shadow(color: Color("default-shadow"), radius: 25, x: 0, y: 10)
                                )
                            
                        }
                        
                        Spacer()
                    }
                }
                .padding(.horizontal)
                
                VStack {
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
