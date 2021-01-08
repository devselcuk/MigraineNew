//
//  QuestionInputView.swift
//  Migraine
//
//  Created by Asiye on 2.01.2021.
//

import UIKit

class QuestionInputView: UIView {

    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
  
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
        
        
    }
    
    
    
    
    func setUp() {
        
        let nib = UINib(nibName: "QuestionInputView", bundle: Bundle(for: type(of: self)))
        guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { fatalError("failed nib init")}
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        let constraints = [contentView.topAnchor.constraint(equalTo: topAnchor), contentView.bottomAnchor.constraint(equalTo: bottomAnchor), contentView.leftAnchor.constraint(equalTo: leftAnchor), contentView.rightAnchor.constraint(equalTo: rightAnchor)]
        NSLayoutConstraint.activate(constraints)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        cleanButton.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
        
        inputTextField.textAlignment = .center
        inputTextField.textColor = .white
        inputTextField.font = UIFont(name: "Avenir", size: 18)
    }
    

}
