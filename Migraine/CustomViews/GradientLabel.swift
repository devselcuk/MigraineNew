//
//  GradientLabel.swift
//  Migraine
//
//  Created by Asiye on 28.12.2020.
//

import UIKit




class GradientLabel : UILabel {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeGradient()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makeGradient()
    }
    
    
    
    func makeGradient() {
        let strokeTextAttributes: [NSAttributedString.Key : Any] = [
            .strokeColor : Colors.gradientColor(bounds: self.bounds) ?? UIColor.clear,
            .foregroundColor : UIColor.clear,
            .strokeWidth : -2.0,
            ]
        self.attributedText = NSAttributedString(string: self.text ?? "", attributes: strokeTextAttributes)
    }
    
    
}



