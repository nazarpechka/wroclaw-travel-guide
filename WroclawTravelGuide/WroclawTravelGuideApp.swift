//
//  WroclawTravelGuideApp.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 23.10.2021.
//

import SwiftUI

@main
struct WroclawTravelGuideApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(modelData)
        }
    }
}
