//
//  OnBoardTwoCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit

class OnBoardTwoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var blueGradientView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        blueGradientView.makeGradient(with: [Colors.blue1, Colors.purple], direction: .vertical)
        
    }
    
}
