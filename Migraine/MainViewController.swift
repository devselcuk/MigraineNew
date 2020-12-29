//
//  MainViewController.swift
//  Migraine
//
//  Created by Asiye on 29.12.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var startSavingView: UIView!
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var attackHistoryView: UIView!
    
    @IBOutlet weak var blogView: UIView!
    
    @IBOutlet weak var attackHistoryLabel: UILabel!
    
    @IBOutlet weak var blogLabel: UILabel!
    
    //properties
    
    
    
    
    
    //IBActions
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flatBackground()
        
        startSavingView.makeGradient(with: [Colors.purple, Colors.blue1], direction: .vertical)
        
        mainView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        attackHistoryView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        
        blogView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        
        attackHistoryLabel.textColor = Colors.gradientColor(bounds: attackHistoryLabel.bounds)
        
        blogLabel.textColor = Colors.gradientColor2(bounds: blogLabel.bounds)

        // Do any additional setup after loading the view.
    }
    



}
