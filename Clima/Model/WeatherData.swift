//
//  WeatherModel.swift
//  Clima
//
//  Created by Vaibhav Bisht on 09/04/2020.
//  Copyright © 2020 Vaibhav Bisht. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
