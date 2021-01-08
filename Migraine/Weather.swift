//
//  Weather.swift
//  Migraine
//
//  Created by Asiye on 7.01.2021.
//

import UIKit
import CoreLocation


struct Weather {
    let description : String
    let degree : Double
    let icon : String
    
    
    var degreeString : String {
        return "\(degree) ˚C"
    }
    
    var iconURL : URL {
        return URL(string: "http://openweathermap.org/img/wn/\(icon)@2x.png")!
    }
    
    func fetchImage( completion : @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: iconURL) { (data, _, _) in
            guard let data = data else { return}
            
            completion(UIImage(data: data))
            
            
        }.resume()
    }
    
    
    
}


extension OnboardViewController : CLLocationManagerDelegate  {
   
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("\(error)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("abcdef")
        guard !weatherGot else { return}
        weatherGot = true
        manager.stopUpdatingLocation()
        if let location = locations.first {
            print("adbad")
            URLSession.shared.dataTask(with: URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(location.coordinate.latitude)&lon=\(location.coordinate.longitude)&appid=\(key)")!) { (data, _, _) in
                guard let data = data else { return}
                
                guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] else { return}
                guard let weatherArray = json["weather"] as? NSArray else { return}
                
                guard let weather = weatherArray.firstObject as? [String : Any] else { return}
                let description = weather["description"] as? String ?? ""
                let icon = weather["icon"] as? String ?? ""
                
                guard let main = json["main"] as? [ String : Any] else { return}
               
                
                let temp = main["temp"] as? Double ?? 0
                
                
                let w  = Weather(description: description, degree: temp, icon: icon)
                
                
                
            }.resume()
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            manager.requestLocation()
        }
    }
    
    
}
