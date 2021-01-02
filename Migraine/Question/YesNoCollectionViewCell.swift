//
//  YesNoCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 1.01.2021.
//

import UIKit

class YesNoCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.bgView.backgroundColor = Colors.gradientColor(bounds: bgView.bounds)
        // Initialization code
    }

}
