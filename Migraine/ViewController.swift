//
//  ViewController.swift
//  Migraine
//
//  Created by Asiye on 26.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gradientLabel: UILabel!
    
    @IBOutlet weak var blueGradientView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backGroundOne()
        
        blueGradientView.makeGradient(with: [Colors.blue1, Colors.purple])
        
        let strokeTextAttributes: [NSAttributedString.Key : Any] = [
            .strokeColor : Colors.gradientColor(bounds: gradientLabel.bounds) ?? UIColor.clear,
            .foregroundColor : UIColor.clear,
            .strokeWidth : -2.0,
            ]
        gradientLabel.attributedText = NSAttributedString(string: gradientLabel.text ?? "", attributes: strokeTextAttributes)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.performSegue(withIdentifier: "toBoard", sender: Any.self)
        }
        
        
        // Do any additional setup after loading the view.
    }


}



