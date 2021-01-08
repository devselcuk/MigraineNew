//
//  FaceCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 4.01.2021.
//

import UIKit

class FaceCollectionViewCell: UICollectionViewCell {

    @IBOutlet var views: [UIView]!
    
    
    @IBOutlet weak var notSureButton: UIButton!
    
    @IBOutlet weak var notWorkedButton: UIButton!
    @IBOutlet weak var maybeButton: UIButton!
    @IBOutlet weak var workedButton: UIButton!
    
    
    @IBOutlet var buttons: [UIButton]!
    
    let optionNames = ["Emin Değilim","İşe Yaramadı","Biraz İşe Yaradı","İşe Yaradı"]
    
    var selectedOption = ""
    
    @IBAction func chooseOption(_ sender: UIButton) {
        selectedOption = optionNames[sender.tag]
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        views.forEach(({ $0.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)}))
        
        for i in buttons.indices {
            buttons[i].setImage(UIImage(named: optionNames[i]), for: .normal)
            
            let label = UILabel()
            label.text = optionNames[i]
            label.textColor = #colorLiteral(red: 0.5677391887, green: 0.6833866239, blue: 0.8609253168, alpha: 1)
            label.font = UIFont(name: "Avenir", size: 13)
            label.translatesAutoresizingMaskIntoConstraints = false
            addSubview(label)
            
            
            let constraints = [label.topAnchor.constraint(equalTo: views[i].bottomAnchor, constant: 5), label.centerXAnchor.constraint(equalTo: views[i].centerXAnchor)]
            NSLayoutConstraint.activate(constraints)
            
            
        }
        
        
        // Initialization code
    }

}
