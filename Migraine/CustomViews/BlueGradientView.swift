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
    case fromTopLeft
}

protocol DesignableBorder {
    var cornerRadius : CGFloat { get set}
    
    
}


extension UIView : DesignableBorder {
    
    

    
    
    @IBInspectable var cornerRadius: CGFloat {
        get { self.layer.cornerRadius}
        set { self.layer.cornerRadius = newValue
            
            self.clipsToBounds = true
        }
    }
   
    
    
    
    func makeGradient(with colors : [UIColor], direction : GradientDirection) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
            self.makeGradientInstant(with: colors, direction: direction)
        }
      
    }
    
    func makeGradientInstant(with colors : [UIColor], direction : GradientDirection) {
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
        case .fromTopLeft:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        }
        
        if let gradientLayers = self.layer.sublayers  as? [CAGradientLayer] {
            print(gradientLayers.count)
            for i in gradientLayers {
                i.removeFromSuperlayer()
            }
        } else {
            print("No Gradient Layer")
        }
      
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func makeEqualShadow(with color : UIColor) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
            self.makeEqualShadowInstant(with: color)
        }
        
    }
    
    func makeEqualShadowInstant(with color : UIColor) {
        let path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.cornerRadius).cgPath
        self.layer.shadowPath = path
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 10
    }
    
    
    
}
