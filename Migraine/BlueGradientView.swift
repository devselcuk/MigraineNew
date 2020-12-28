//
//  BlueGradientView.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit

enum GradientDirection {
    case horizontal
    case vertical
}

protocol DesignableBorder {
    var cornerRadius : CGFloat { get set}
}


@IBDesignable extension UIView : DesignableBorder {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { self.layer.cornerRadius}
        set { self.layer.cornerRadius = newValue
            
            self.clipsToBounds = true
        }
    }

    
    
    func makeGradient(with colors : [UIColor], direction : GradientDirection) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
            let colorArray = colors.map({ $0.cgColor})
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.bounds
            gradientLayer.colors = colorArray
            switch direction {
            
            case .horizontal:
                gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            case .vertical:
                gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
                gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
            }
            
            
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
      
    }
    
    
    
}
