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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
