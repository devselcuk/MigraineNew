//
//  CollectionViewMethods.swift
//  Migraine
//
//  Created by Asiye on 4.01.2021.
//

import UIKit



extension QuestionView : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        question.optionImageNames.count > 0 ? question.optionImageNames.count : 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        switch index {
        case 3 , 18, 19,20:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! QuestionThreeCollectionViewCell
            
            cell.imgView.image = UIImage(named: question.optionImageNames[indexPath.row])
            
            
            
            cell.nameLabel.text = index == 3 ? question.optionImageNames[indexPath.row] : ""
         
            return cell
            
        case 11 :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yesno", for: indexPath) as! YesNoCollectionViewCell
            cell.label.text = question.optionImageNames[indexPath.row]
            return cell
        case 12 :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pickerCell", for: indexPath) as! DatePickerCollectionViewCell
            controller?.backgroundTwo()
            
            
            return cell
            
        case 13 :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "amountCell", for: indexPath) as! AmountCollectionViewCell
            
            return cell
        case 14 :
            controller?.flatBackground()
        case 22 :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "face", for: indexPath) as! FaceCollectionViewCell
          
            return cell
        default:
          print("okay")
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "question", for: indexPath) as! QuestionCollectionViewCell
     
        let option = question.optionImageNames[indexPath.row]
        
        if index == 23 {
            cell.imgView.image = UIImage()
            cell.nameLabel.text = ""
            cell.imgContainerView.backgroundColor = .clear
        } else {
            cell.imgView.image = UIImage(named: option)
            cell.nameLabel.text = option
            cell.imgContainerView.backgroundColor = Colors.gradientColor(bounds: cell.imgContainerView.bounds)
        }
        
        
        handleExceptions(cell)
        
        return cell
        
       
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        if index == 3 || index == 11  {
            if indexPath.row == 4 {
                
                return CGSize(width: collectionView.frame.size.width, height: 200)
            }
            
            return CGSize(width: (collectionView.frame.size.width / 2) - 16, height: 200)
        }
        if index == 12 || index == 13 || index == 22 {
            return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height + 100)
        }
    
        if index == 18 {
            return CGSize(width: (collectionView.frame.size.width / 2) - 16, height: collectionView.frame.size.height / 1.75)
        }
        if index == 19 {
            return CGSize(width: (collectionView.frame.size.width / 2) - 16, height: collectionView.frame.size.height / 3)
        }
        if index == 20 {
            return CGSize(width: (collectionView.frame.size.width) - 16, height: collectionView.frame.size.height / 3)
        }
        
        
        let count = question.optionImageNames.count
        let width = count >= 3 ? collectionView.frame.width / 3 : collectionView.frame.width / CGFloat(count)
        
        
        return CGSize(width: width - 16, height: width)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        handleAnswer(question.optionImageNames[indexPath.row], operation: .add)
        
        if index == 3 || index ==   18 || index == 19 || index == 20 {
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
        handleAnswer(question.optionImageNames[indexPath.row], operation: .remove)
        if index == 3 || index == 18 {
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
