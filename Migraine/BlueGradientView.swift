//
//  BlueGradientView.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit



extension UIView {
    func makeGradient(with colors : [UIColor]) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
            let colorArray = colors.map({ $0.cgColor})
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.bounds
            gradientLayer.colors = colorArray
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
            
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
      
    }
}
