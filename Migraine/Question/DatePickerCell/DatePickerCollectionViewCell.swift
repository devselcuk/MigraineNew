//
//  DatePickerCollectionViewCell.swift
//  Migraine
//
//  Created by Asiye on 2.01.2021.
//

import UIKit

class DatePickerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var datePickerView: UIDatePicker!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        self.date = sender.date
    }
    
    
    @IBOutlet weak var dateContainerView: UIView!
 
    var date = Date()
    
    var dateString : String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE dd MMM, HH:mm"
        formatter.locale = Locale(identifier: "tr")
        
        
        
        return formatter.string(from: self.date)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        dateContainerView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
       
        
        textField.attributedPlaceholder = NSAttributedString(string: "İlaç ismini yazınız", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        
        datePickerView.tintColor = Colors.pink
     
        if #available(iOS 13.4, *) {
            datePickerView.preferredDatePickerStyle = .compact
            
            
            
        
        } else {
            // Fallback on earlier versions
        }
        
        // Initialization code
    }

}
