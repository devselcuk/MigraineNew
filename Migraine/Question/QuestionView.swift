//
//  QuestionView.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import UIKit


class QuestionView : UIView {
    
    
   
    
 //IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var laterButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var equalConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    
    //properties
    var question : Question!
    var index  = 0
    let questionBank = QuestionBank()
    
    
    
    
    //IBActions
    @IBAction func next(_ sender: Any) {
        
        
       addItems()
        updateConstraint()
        
    }
    
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        
        
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
   
    
    
    
    
    
    
    
    func setUp() {
        
        //Xib view configuration
        let nib = UINib(nibName: "QuestionView", bundle: Bundle(for: type(of: self)))
        guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { fatalError("failed nib init")}
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        let constraints = [contentView.topAnchor.constraint(equalTo: topAnchor), contentView.bottomAnchor.constraint(equalTo: bottomAnchor), contentView.leftAnchor.constraint(equalTo: leftAnchor), contentView.rightAnchor.constraint(equalTo: rightAnchor)]
        NSLayoutConstraint.activate(constraints)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // collectionViewConfiguration
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.allowsMultipleSelection = true
        
        
        question = questionBank.questions[index]
        questionLabel.text = question.question
        
        
        backgroundView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        backgroundView.makeEqualShadow(with: .black)
        
        collectionView.backgroundView?.backgroundColor = .green
        
        saveButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        laterButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        saveButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        laterButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
      
        let cellNib = UINib(nibName: "QuestionCollectionViewCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "question")
        bringSubviewToFront(collectionView)
        
    }
    
    func updateConstraint() {
        let x = question.optionImageNames.count / 4
        
    
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.8, options: .curveEaseIn) {
            self.heightConstraint.constant = CGFloat(250 + (150 * x))
            
            self.collectionView.performBatchUpdates {
                self.collectionView.reloadSections(IndexSet(integer : 0))
            } completion: { (_) in
                
            }

            
            self.layoutIfNeeded()
        } completion: { (_) in
        
        }

         
        backgroundView.makeGradientInstant(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        backgroundView.makeEqualShadowInstant(with: .black)
        
       
   
    }
    
    func handleExceptions(_ cell : QuestionCollectionViewCell?) {
        if index == 1 {
            cell?.nameLabel.text = ""
        }
    }
    
    @objc func addItems() {
        index += 1
        
        question = questionBank.questions[index]
        questionLabel.text = question.question
    }
    
    
}






extension QuestionView : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        question.optionImageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "question", for: indexPath) as! QuestionCollectionViewCell
        
    
        
        let option = question.optionImageNames[indexPath.row]
        
        cell.imgView.image = UIImage(named: option)
        cell.nameLabel.text = option
        cell.imgContainerView.backgroundColor = Colors.gradientColor(bounds: cell.imgContainerView.bounds)
        
        handleExceptions(cell)
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let count = question.optionImageNames.count
        
        let width = count >= 3 ? collectionView.frame.width / 3 : collectionView.frame.width / CGFloat(count)
        
        
        return CGSize(width: width - 16, height: width)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionCollectionViewCell else { return}
    
        cell.imgContainerView.backgroundColor = Colors.gradientColor2(bounds: cell.imgContainerView.bounds)
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
     
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionCollectionViewCell else { return}
   
        cell.imgContainerView.backgroundColor = Colors.gradientColor(bounds: cell.imgContainerView.bounds)
    }
}
