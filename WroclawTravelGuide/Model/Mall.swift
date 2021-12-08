//
//  Mall.swift
//  WroclawTravelGuide
//
//  Created by Sofia Malyshok on 08/11/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Mall: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    
    private var iconName: String
    var icon: Image {
        Image(iconName)
    }
    
    private var shadowColor: String
    var shadow: Color {
        Color(shadowColor)
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    var workingHours: WorkingHours
    
    func isOpenNow() -> Bool {
        let tz = NSTimeZone.default
        let now = NSCalendar.current.dateComponents(in: tz, from: Date())

        var open = 0, close = 0
        if now.weekday == 6 {
            if let saturday = workingHours.saturday {
                open = saturday.open
                close = saturday.close
            } else {
                return false;
            }
        } else if now.weekday == 7 {
            if let sunday = workingHours.sunday {
                open = sunday.open
                close = sunday.close
            } else {
                return false;
            }
        } else {
            if let weekday = workingHours.weekday {
                open = weekday.open
                close = weekday.close
            } else {
                return false;
            }
        }
        
        let hour = now.hour

        return hour ?? 0 > open && hour ?? 0 < close;
    }
}

struct WorkingHours: Hashable, Codable {
    let weekday: Hours?
    let saturday: Hours?
    let sunday: Hours?
}


struct Hours: Hashable, Codable {
    let open: Int
    let close: Int
}
