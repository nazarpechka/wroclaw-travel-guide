//
//  WorkingHours.swift
//  WroclawTravelGuide
//
//  Created by Nazar Pechevystyi on 08.12.2021.
//

import Foundation

struct WorkingHours: Hashable, Codable {
    let weekday: Hours?
    let saturday: Hours?
    let sunday: Hours?
    
    func isOpenNow() -> Bool {
        let tz = NSTimeZone.default
        let now = NSCalendar.current.dateComponents(in: tz, from: Date())

        var open = 0, close = 0
        if now.weekday == 6 {
            if let saturday = saturday {
                open = saturday.open
                close = saturday.close
            } else {
                return false;
            }
        } else if now.weekday == 7 {
            if let sunday = sunday {
                open = sunday.open
                close = sunday.close
            } else {
                return false;
            }
        } else {
            if let weekday = weekday {
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


struct Hours: Hashable, Codable {
    let open: Int
    let close: Int
}
