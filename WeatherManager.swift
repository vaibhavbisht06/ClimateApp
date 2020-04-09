//
//  WeatherManager.swift
//  Clima
//
//  Created by Vaibhav Bisht on 09/04/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=12dbdf7d5e9d870b5e35a984d0012e1b"
    func fetchWeather (cityName : String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
