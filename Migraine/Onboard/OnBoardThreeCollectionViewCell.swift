//
//  OnBoardThreeCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 28.12.2020.
//

import UIKit

class OnBoardThreeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        
        button.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
        
        
    }
    
}
