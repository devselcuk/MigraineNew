//
//  UserTypeViewController.swift
//  Migraine
//
//  Created by Asiye on 28.12.2020.
//

import UIKit

class UserTypeViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  backGroundOne()
        buttons.forEach { (but) in
            but.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
        }
    }
    


}
