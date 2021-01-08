//
//  SummaryTableViewCell.swift
//  Migraine
//
//  Created by Asiye on 6.01.2021.
//

import UIKit

class SummaryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    var item : SummaryItem? {
        willSet {
            if let item = newValue {
                
                if item.index == 0 {
                    answerLabel.font = UIFont(name: "Avenir-Black", size: 24)
                    answerLabel.textColor = Colors.pink
                } else {
                    answerLabel.font = UIFont(name: "Avenir-Medium", size: 13)
                    answerLabel.textColor = #colorLiteral(red: 0.5677391887, green: 0.6833866239, blue: 0.8609253168, alpha: 1)
                }
                
                
                
                
                self.answerLabel.text = item.answerString
                if item.showImage {
                    if let imageName = item.result.last {
                        self.answerImageView.image = UIImage(named: imageName)
                        self.answerLabel.text = ""
                    }
                } else {
                    self.answerImageView.image = UIImage()
                    self.answerLabel.text = commaDropped(item.answerString)
                }
                
                self.titleLabel.text = item.title
                self.imgView.image = UIImage(named: "summary\(item.index)")
          
            }
        }
    }
    
    
    func commaDropped(_ string : String) -> String {
        if string.last == "," {
            return "\(string.dropLast())"
        } else {
            return string
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        containerView.makeEqualShadow(with: .darkText)
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
