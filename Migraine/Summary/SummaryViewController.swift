//
//  SummaryViewController.swift
//  Migraine
//
//  Created by Asiye on 6.01.2021.
//

import UIKit

class SummaryViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    var attack : Attack?
    
    var attackSummary : [SummaryItem] {
        if let attack = attack {
            let processor = AttackProccessor(attack: attack)
            return processor.attackSummary
        } else {
            return []
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundTwo()
        containerView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        containerView.makeEqualShadow(with: .darkText)
        button.makeGradient(with: [Colors.purple, Colors.blue1], direction: .vertical)
        
        button.makeEqualShadow(with: .darkText)
       

        // Do any additional setup after loading the view.
    }
    

 

}

extension SummaryViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        attackSummary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "summary") as! SummaryTableViewCell
        
       
        cell.item = attackSummary[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    
    
    
}
