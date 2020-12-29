//
//  Colors.swift
//  Migraine
//
//  Created by Asiye on 26.12.2020.
//

import UIKit




struct Colors {
    static let topDarkBlue = #colorLiteral(red: 0.1098039216, green: 0.1529411765, blue: 0.2588235294, alpha: 1)
    static let bottomDarkBlue = #colorLiteral(red: 0.1411764706, green: 0.2039215686, blue: 0.3725490196, alpha: 1)
    
   static let blue1 = #colorLiteral(red: 0.2862745098, green: 0.7450980392, blue: 1, alpha: 1)
    
    static let blueGray = #colorLiteral(red: 0.4980392157, green: 0.6156862745, blue: 0.8274509804, alpha: 1)
    
    
    static let purple = #colorLiteral(red: 0.5019607843, green: 0.2823529412, blue: 1, alpha: 1)
    static let pink = #colorLiteral(red: 1, green: 0.6039215686, blue: 0.6941176471, alpha: 1)
    
    
    static func gradientColor(bounds : CGRect) -> UIColor? {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [purple.cgColor, pink.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        
        return UIColor(patternImage: image!)
        
    }
    
    static func gradientColor2(bounds : CGRect) -> UIColor? {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [purple.cgColor, blue1.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        
        return UIColor(patternImage: image!)
        
    }
}
