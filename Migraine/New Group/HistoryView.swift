//
//  HistoryView.swift
//  Migraine
//
//  Created by Asiye on 8.01.2021.
//

import UIKit

class HistoryView: UIView {

   
    
    var attacks = [Attack]()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    func setUp() {
        let nib = UINib(nibName: "HistoryView", bundle: nil)
        guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return}
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        let constraints = [contentView.topAnchor.constraint(equalTo: topAnchor), contentView.bottomAnchor.constraint(equalTo: bottomAnchor), contentView.leftAnchor.constraint(equalTo: leftAnchor), contentView.rightAnchor.constraint(equalTo: rightAnchor)]
        NSLayoutConstraint.activate(constraints)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        
    }
    

}
