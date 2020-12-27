//
//  OnBoardOneCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit

class OnBoardOneCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var gradientLabel: UILabel!
    
    @IBOutlet weak var blueGradientView: UIView!
    
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        
        blueGradientView.makeGradient(with: [Colors.blue1, Colors.purple])
        
        let strokeTextAttributes: [NSAttributedString.Key : Any] = [
            .strokeColor : Colors.gradientColor(bounds: gradientLabel.bounds) ?? UIColor.clear,
            .foregroundColor : UIColor.clear,
            .strokeWidth : -2.0,
            ]
        gradientLabel.attributedText = NSAttributedString(string: gradientLabel.text ?? "", attributes: strokeTextAttributes)
    }
    
    
}
