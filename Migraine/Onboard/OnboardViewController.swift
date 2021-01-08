//
//  OnboardViewController.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit
import CoreLocation

class OnboardViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageStackView: UIStackView!
    
    @IBOutlet var pageImageViews: [UIImageView]!
 
    
    let key = "e55843b4d8e44219ca65ed35104f54e7"
    
    
    var weatherGot = false
    
    let manager = CLLocationManager()
    
    var items = [OnboardItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        let factory = OnboardFactory()
        self.items = factory.items
        collectionView.isPagingEnabled = true
        backgroundTwo()

        // Do any additional setup after loading the view.
    }
    
    
    func selectPage(at index : Int) {
        for i in pageImageViews {
            i.image = UIImage(named: "unselectedCircle")
        }
        
        pageImageViews[index].image = UIImage(named: "selectedCircle")
    }
    
    @objc func getStarted() {
        performSegue(withIdentifier : "toUserType", sender : Any.self)
    }
  

}


extension OnboardViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    

    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath)
           
            
            return cell
            
        } else if indexPath.row == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellThree", for: indexPath) as! OnBoardThreeCollectionViewCell
           
            cell.button.addTarget(self, action: #selector(getStarted), for: .touchUpInside)
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as! OnBoardTwoCollectionViewCell
            let item = items[indexPath.row - 1]
           
            cell.imgView.image = UIImage(named: item.imageName)
            
            cell.iconImageView.image = UIImage(named: item.iconName)
            cell.titleLabel.text = item.title
            cell.messageLabel.text = item.message
            
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        selectPage(at: indexPath.row)
        
        if indexPath.row == 4 {
            backGroundOne()
        } else {
            backgroundTwo()
        }
    }
    
    
    
    
}



