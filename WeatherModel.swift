//
//  WeatherModel.swift
//  Clima
//
//  Created by Veronica Rudiuk on 14.11.22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 0..<300:
            return "cloud.bolt"
        case 300..<400:
            return "cloud.drizzle"
        case 400..<600:
            return "cloud.rain"
        case 600..<700:
            return "cloud.snow"
        case 700..<800:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 800...:
            return "cloud"
            
        default:
            return "clear"
        }
    }
}
