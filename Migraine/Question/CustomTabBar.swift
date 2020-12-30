//
//  CustomTabBar.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import UIKit

class CustomTabBar: UITabBar {

   
    override func draw(_ rect: CGRect) {
        // Drawing code
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [Colors.bottomDarkBlue.cgColor, Colors.topDarkBlue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
 

}
