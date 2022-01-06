//
//  FavoriteButton.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 06.01.2022.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool
    
    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 60, height: 60)
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 33, height: 30)
                    .foregroundColor(isFavorite ? .red : Color( "favourite-icon-color"))
            }
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isFavorite: .constant(true))
    }
}
