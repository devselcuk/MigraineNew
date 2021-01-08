//
//  QuestionViewController.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import UIKit


class QuestionViewController: UIViewController {

    
    @IBOutlet weak var questionView: QuestionView!
    
    var attack : Attack?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flatBackground()
        questionView.controller = self
        hidesBottomBarWhenPushed = true
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "summary" {
            let vc = segue.destination as! SummaryViewController
            vc.attack = self.attack
        }
    }
    

  

}



