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
    
    let textInputView = QuestionInputView()
    
    var controller : QuestionViewController?
    
    //properties
    var question : Question!
    var index  = 0
    let questionBank = QuestionBank()
    
    
    
    var attack : Attack!
    
    
    
    
    //IBActions
    @IBAction func next(_ sender: Any) {
        handleExceptionAnswers()
        addItems()
        updateUI()
     
    }
    
    
    
    //inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        
        
        
        
        
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    
    
    
    
    
    //methods
    
    
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
        attack = Attack.init(id: UUID().uuidString, date: Date(), interval: 0, questions: questionBank.questions)
        questionLabel.text = question.question
        
        
        backgroundView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        backgroundView.makeEqualShadow(with: .black)
        
        collectionView.backgroundView?.backgroundColor = .green
        
        
        // text input configuration visible if needed
        
        self.addSubview(textInputView)
        textInputView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsLabel = [textInputView.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),textInputView.leftAnchor.constraint(equalTo: collectionView.leftAnchor, constant: 30 ), textInputView.rightAnchor.constraint(equalTo: collectionView.rightAnchor, constant: -30), textInputView.heightAnchor.constraint(equalToConstant: 100)]
        NSLayoutConstraint.activate(constraintsLabel)
        self.textInputView.isHidden = true
        
        
        
        
        // bottom buttons configuration
        
        saveButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        laterButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        saveButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        laterButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        laterButton.imageView?.contentMode = .scaleAspectFit
        
        
        //cell registration
        
        registerCells()
       
        
        
        
        bringSubviewToFront(collectionView)
        
    }
    
    
    
    
    
    
    func updateUI() {
        textInputView.inputTextField.text = ""
        let x = question.optionImageNames.count / 4
        collectionView.isScrollEnabled = true
        collectionView.clipsToBounds = true
        self.textInputView.isHidden = !question.needTextInput
        
        UIView.animate(withDuration: 0.5) {
            
            self.collectionView.performBatchUpdates {
                self.collectionView.reloadSections(IndexSet(integer : 0))
            } completion: { (_) in
                
            }
                        
            if self.index == 3 || self.index == 18 || self.index == 19 || self.index == 20  {
                self.heightConstraint.constant = 750
            } else if self.index == 12 || self.index == 13 || self.index == 22 {
                self.heightConstraint.constant = 500
            }
            else {
                self.heightConstraint.constant = CGFloat(300 + (150 * x))
            }
            
            
          
            
            
            self.layoutIfNeeded()
        } completion: { (_) in
            
        }
        
        
        
        
        if index == 3 {
            backgroundView.makeGradientInstant(with: [Colors.blue1, Colors.purple], direction: .fromTopLeft)
        } else if index == 12 || index == 13 {
            backgroundView.makeGradientInstant(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical, small : true)
            collectionView.isScrollEnabled = false
            collectionView.clipsToBounds = false
        } else if index == 22 {
            collectionView.clipsToBounds = false
            clipsToBounds = false
            backgroundView.makeGradientInstant(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        } else {
            backgroundView.makeGradientInstant(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        }
        
        if index == 12 || index == 13 || index == 22 {
            backgroundView.layer.shadowOpacity = 0
            
        } else {
            backgroundView.makeEqualShadowInstant(with: .black)
        }
        
        if index == 23 {
            print(self.attack)
            controller?.attack = self.attack
            controller?.performSegue(withIdentifier: "summary", sender: Any.self)
        }
        
        
        
    }
    
    
    
    func registerCells() {
        let cellNib = UINib(nibName: "QuestionCollectionViewCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "question")
        
        let cellNib1 = UINib(nibName: "QuestionThreeCollectionViewCell", bundle: nil)
        collectionView.register(cellNib1, forCellWithReuseIdentifier: "cell1")
        
        let cellNib2 = UINib(nibName: "YesNoCollectionViewCell", bundle: nil)
        collectionView.register(cellNib2, forCellWithReuseIdentifier: "yesno")
        
        let cellNib3 = UINib(nibName: "DatePickerCollectionViewCell", bundle: nil)
        collectionView.register(cellNib3, forCellWithReuseIdentifier: "pickerCell")
        
        let cellNib4 = UINib(nibName: "AmountCollectionViewCell", bundle: nil)
        collectionView.register(cellNib4, forCellWithReuseIdentifier: "amountCell")
        
        let cellNib5 = UINib(nibName: "FaceCollectionViewCell", bundle: nil)
        collectionView.register(cellNib5, forCellWithReuseIdentifier: "face")
    }
    
    
    
    func handleExceptions(_ cell : QuestionCollectionViewCell?) {
        if index == 1 {
            cell?.nameLabel.text = ""
        }
    }
    
    
    
    
    
    @objc func addItems() {
        index += 1
        
        if index >= questionBank.questions.count {
            index -= 1
        }
        print(index)
        question = questionBank.questions[index]
        questionLabel.text = question.question
    }
    
    
}







