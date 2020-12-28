//
//  InputView.swift
//  Migraine
//
//  Created by Asiye on 28.12.2020.
//

import UIKit

@IBDesignable
class InputView  : UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var lineView: UIView!
    
    @IBInspectable
    var textIsPassword : Bool = false {
        didSet {
            print("aabbcc")
            if textIsPassword {
                lineView.makeGradient(with: [Colors.blueGray,Colors.blueGray], direction: .horizontal)
            } else {
                lineView.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
            }
        }
    }
    
    
    var placeHolderText : String = "" {
        willSet {
            let attrPlaceString = NSAttributedString(string: newValue, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            textField.attributedPlaceholder = attrPlaceString
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    override  func prepareForInterfaceBuilder() {
        setup()
    }
    func setup() {
        let nib = UINib(nibName: "InputView", bundle: Bundle(for: type(of: self)))
        guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { fatalError("failed nib init")}
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        let constraints = [contentView.topAnchor.constraint(equalTo: topAnchor), contentView.bottomAnchor.constraint(equalTo: bottomAnchor), contentView.leftAnchor.constraint(equalTo: leftAnchor), contentView.rightAnchor.constraint(equalTo: rightAnchor)]
        NSLayoutConstraint.activate(constraints)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
       
        
      
           
       
        
       
        
        
    }
    
  
    
    
    
    
}
