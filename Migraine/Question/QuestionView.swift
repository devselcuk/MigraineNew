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
    
    var textField : UITextField = {
        let field = UITextField()
        
        let bottomLine = UIView()
        bottomLine.backgroundColor = .gray
        field.addSubview(bottomLine)
        let constraints = [bottomLine.topAnchor.constraint(equalTo: field.bottomAnchor), bottomLine.leftAnchor.constraint(equalTo: field.leftAnchor), bottomLine.rightAnchor.constraint(equalTo: field.rightAnchor), bottomLine.heightAnchor.constraint(equalToConstant: 2)]
        NSLayoutConstraint.activate(constraints)
        
        
        return field
    }()
    
    
    
    //properties
    var question : Question!
    var index  = 0
    let questionBank = QuestionBank()
    
    
    
    
    //IBActions
    @IBAction func next(_ sender: Any) {
        
        
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
        questionLabel.text = question.question
        
        
        backgroundView.makeGradient(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        backgroundView.makeEqualShadow(with: .black)
        
        collectionView.backgroundView?.backgroundColor = .green
        
        
        let inputView = QuestionInputView()
        
        self.addSubview(inputView)
        inputView.translatesAutoresizingMaskIntoConstraints = false
        let constraintsLabel = [inputView.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),inputView.leftAnchor.constraint(equalTo: collectionView.leftAnchor, constant: 30 ), inputView.rightAnchor.constraint(equalTo: collectionView.rightAnchor, constant: -30), inputView.heightAnchor.constraint(equalToConstant: 100)]
        NSLayoutConstraint.activate(constraintsLabel)
        
        
        
        saveButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        laterButton.makeGradient(with: [Colors.purple, Colors.pink], direction: .horizontal)
        saveButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        laterButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        let cellNib = UINib(nibName: "QuestionCollectionViewCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "question")
        
        let cellNib1 = UINib(nibName: "QuestionThreeCollectionViewCell", bundle: nil)
        collectionView.register(cellNib1, forCellWithReuseIdentifier: "cell1")
        
        let cellNib2 = UINib(nibName: "YesNoCollectionViewCell", bundle: nil)
        collectionView.register(cellNib2, forCellWithReuseIdentifier: "yesno")
        
        
        
        bringSubviewToFront(collectionView)
        
    }
    
    func updateUI() {
        let x = question.optionImageNames.count / 4
        
        
        UIView.animate(withDuration: 0.5) {
            if self.index == 3 {
                self.heightConstraint.constant = 750
            } else {
                self.heightConstraint.constant = CGFloat(300 + (150 * x))
            }
            
            
            self.collectionView.performBatchUpdates {
                self.collectionView.reloadSections(IndexSet(integer : 0))
            } completion: { (_) in
                
            }
            
            
            self.layoutIfNeeded()
        } completion: { (_) in
            
        }
        
        if index == 3 {
            backgroundView.makeGradientInstant(with: [Colors.blue1, Colors.purple], direction: .fromTopLeft)
        } else {
            backgroundView.makeGradientInstant(with: [Colors.topDarkBlue, Colors.bottomDarkBlue], direction: .vertical)
        }
        
        backgroundView.makeEqualShadowInstant(with: .black)
        
        
        
    }
    
    func handleExceptions(_ cell : QuestionCollectionViewCell?) {
        if index == 1 {
            cell?.nameLabel.text = ""
        }
    }
    
    @objc func addItems() {
        index += 1
        
        if index >= questionBank.questions.count {
            return
        }
        
        question = questionBank.questions[index]
        questionLabel.text = question.question
    }
    
    
}






extension QuestionView : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        question.optionImageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if index == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! QuestionThreeCollectionViewCell
            
            cell.imgView.image = UIImage(named: question.optionImageNames[indexPath.row])
            cell.nameLabel.text = question.optionImageNames[indexPath.row]
            
            
            
            return cell
            
        }
        
        if index == 11 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yesno", for: indexPath) as! YesNoCollectionViewCell
            cell.label.text = question.optionImageNames[indexPath.row]
            
            
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "question", for: indexPath) as! QuestionCollectionViewCell
        
        
        
        let option = question.optionImageNames[indexPath.row]
        
        cell.imgView.image = UIImage(named: option)
        cell.nameLabel.text = option
        cell.imgContainerView.backgroundColor = Colors.gradientColor(bounds: cell.imgContainerView.bounds)
        
        handleExceptions(cell)
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if index == 3 || index == 11{
            if indexPath.row == 4 {
                
                return CGSize(width: collectionView.frame.size.width, height: 200)
            }
            return CGSize(width: (collectionView.frame.size.width / 2) - 16, height: 200)
        }
        
        
        
        let count = question.optionImageNames.count
        let width = count >= 3 ? collectionView.frame.width / 3 : collectionView.frame.width / CGFloat(count)
        
        
        return CGSize(width: width - 16, height: width)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if index == 3 {
            guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionThreeCollectionViewCell else { return }
            cell.imgView.image = UIImage(named: "\(question.optionImageNames[indexPath.row])1")
        }
        
        if index == 11 {
            guard let cell = collectionView.cellForItem(at: indexPath) as? YesNoCollectionViewCell else { return}
            cell.bgView.backgroundColor = Colors.gradientColor2(bounds: cell.bgView.bounds)
        }
        
        
        
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionCollectionViewCell else { return}
        
        cell.imgContainerView.backgroundColor = Colors.gradientColor2(bounds: cell.imgContainerView.bounds)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if index == 3 {
            guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionThreeCollectionViewCell else { return }
            cell.imgView.image = UIImage(named: "\(question.optionImageNames[indexPath.row])")
        }
        
        if index == 11 {
            guard let cell = collectionView.cellForItem(at: indexPath) as? YesNoCollectionViewCell else { return}
            cell.bgView.backgroundColor = Colors.gradientColor(bounds: cell.bgView.bounds)
        }
        
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuestionCollectionViewCell else { return}
        
        cell.imgContainerView.backgroundColor = Colors.gradientColor(bounds: cell.imgContainerView.bounds)
    }
}
