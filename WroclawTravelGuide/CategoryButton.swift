//
//  CategoryButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

struct CategoryButton: View {
    var image: Image
    var label: String
    var backgroundColor: Color
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationLink(destination: Text("Test"), tag: 1, selection: $selection) {
            Button {
                self.selection = 1
            } label: {
                VStack {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .center)
                    Text(label)
                }
                .frame(width: UIScreen.main.bounds.width / 2 - 26, height: 143)
                .background(backgroundColor)
                .foregroundColor(.black)
                .font(.headline)
                .cornerRadius(15)
                .shadow(color: Color("ShadowColor"), radius: 5, x: 5, y: 10)
                
            }
        }
        .buttonStyle(MyButtonStyle())
        
    }
}

struct MyButtonStyle: ButtonStyle {
    public func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 1 : 1)
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(image: Image("placeslogo"), label: "Places to visit", backgroundColor: Color("PlacesColor"))
    }
}
