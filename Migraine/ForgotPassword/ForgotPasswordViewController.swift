//
//  ForgotPasswordViewController.swift
//  Migraine
//
//  Created by Asiye on 29.12.2020.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
     
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let imageView = UIImageView(image: UIImage(named: "flatBg"))
        imageView.frame = view.bounds
        view.insertSubview(imageView, at: 0)
    }


  

}
