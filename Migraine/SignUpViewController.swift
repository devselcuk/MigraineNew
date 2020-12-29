//
//  SignUpViewController.swift
//  Migraine
//
//  Created by Asiye on 29.12.2020.
//

import UIKit

class SignUpViewController: UIViewController {
    //IBOutlets
    @IBOutlet weak var nameInputView: InputView!
    
    @IBOutlet weak var mailInputView: InputView!
    
    @IBOutlet weak var birthdateInputView: InputView!
    
    @IBOutlet weak var passwordInputview: InputView!
    
    @IBOutlet weak var againInputView: InputView!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var checkBut: UIButton!
    //Properties
    
    var boxIsChecked : Bool {
         checkBut.isSelected
    }
    
    
    //IBActions
    
    @IBAction func checkBox(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroungThree()
        signUpButton.makeGradient(with: [Colors.blue1, Colors.purple], direction: .horizontal)
        loginButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        
        nameInputView.placeHolderText = "İsminizi yazınız"
        nameInputView.titleLabel.text = "İsminiz"
        mailInputView.placeHolderText = "Mail adresinizi yazınız"
        mailInputView.titleLabel.text = "E-mail adresiniz"
        birthdateInputView.placeHolderText = "Doğum tatihinizi seçiniz"
        birthdateInputView.titleLabel.text = "Doğum tarihiniz"
        passwordInputview.placeHolderText = "••••"
        passwordInputview.titleLabel.text = "Parolanız"
        againInputView.placeHolderText = "••••"
        againInputView.titleLabel.text = "Parola tekrar"

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

  

}
