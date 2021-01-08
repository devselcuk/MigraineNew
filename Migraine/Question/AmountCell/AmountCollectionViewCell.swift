//
//  AmountCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 3.01.2021.
//

import UIKit

class AmountCollectionViewCell: UICollectionViewCell {

    
    var amount : Double = 0 {
        willSet {
            amountLabel.text = "\(newValue)"
        }
    }
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBAction func plusTheAmount(_ sender: UIButton) {
        amount += 0.5
    }
    
    @IBAction func minusTheAmount(_ sender: UIButton) {
        
        amount -= 0.5
        if amount < 0 {
            amount = 0
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        minusButton.imageView?.contentMode = .scaleAspectFit
        plusButton.imageView?.contentMode = .scaleAspectFit
    
        // Initialization code
    }
    
    
    
    

}
