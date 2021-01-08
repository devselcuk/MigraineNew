//
//  QuestionThreeCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 1.01.2021.
//

import UIKit

class QuestionThreeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.containerView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .fromTopLeft)
        nameLabel.textColor = Colors.purple
        
        
        // Initialization code
    }

}
