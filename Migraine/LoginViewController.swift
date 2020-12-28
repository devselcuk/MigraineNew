//
//  LoginViewController.swift
//  Migraine
//
//  Created by Asiye on 28.12.2020.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var nameInputView: InputView!
    
    @IBOutlet weak var mailInputView: InputView!
    @IBOutlet weak var passwordInputView: InputView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var forgotButton: UIButton!
    
    @IBOutlet weak var appleLabel: UILabel!
    
    @IBOutlet weak var facebookLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureInputViews()
        
        backgroungThree()
        appleLabel.textColor = Colors.gradientColor(bounds: appleLabel.bounds)
        facebookLabel.textColor = Colors.gradientColor(bounds: facebookLabel.bounds)

        // Do any additional setup after loading the view.
    }
    
    func configureInputViews() {
        nameInputView.titleLabel.text = "İsminiz"
        nameInputView.placeHolderText = "İsminizi yazınız"
        
        mailInputView.titleLabel.text = "E-mail adresiniz"
        mailInputView.placeHolderText = "Email adresinizi yazınız"
        
        passwordInputView.titleLabel.text = "Parolanız"
        passwordInputView.placeHolderText = "****"
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(view.frame.width)
        print(view.frame.height)
        loginButton.cornerRadius = loginButton.frame.height / 2
        loginButton.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
        
        signupButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        
        forgotButton.setTitleColor(Colors.gradientColor(bounds: forgotButton.bounds), for: .normal)
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
