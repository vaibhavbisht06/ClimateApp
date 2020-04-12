//
//  WeatherManager.swift
//  Clima
//
//  Created by Vaibhav Bisht on 09/04/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=12dbdf7d5e9d870b5e35a984d0012e1b&units=metric"
    func fetchWeather (cityName : String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    func performRequest(urlString : String){
        //1.Create a URL
        if let url = URL(string: urlString){
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            //3. Give the session a tesk
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            //4. Start the task
            task.resume()
        }
    }
    func parseJSON(weatherData: Data ){
        let decoder = JSONDecoder()
        do {
        let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
            print(decodedData.main.temp)
            let id = print(decodedData.weather[0].id)
        }catch{
             print(error)
        }
    }
    func getConditionName(weaterId: Int) -> String{
        
    }
}

