//
//  HandleAnswers.swift
//  Migraine
//
//  Created by Asiye on 5.01.2021.
//

import UIKit




extension QuestionView {
    func handleAnswer(_ answer : String , operation : AnswerOperation) {
        
       
        if let index = attack.questions.firstIndex(where: { $0.index == index}) {
          
            
            switch operation {
            case .add:
                attack.questions[index].answers.append(answer)
            case .remove:
                if let answIndex = attack.questions[index].answers.firstIndex(of: answer) {
                    attack.questions[index].answers.remove(at: answIndex)
                } else {
                    print("okay")
                }
                
            }
        }
        
       
        
    }
    
    func handleExceptionAnswers() {
        
        
        
        if question.needTextInput {
            handleAnswer(textInputView.inputTextField.text ?? "", operation: .add)
        }
        if index == 12 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pickerCell", for: IndexPath(index: 0)) as? DatePickerCollectionViewCell {
                question.date = cell.date
                handleAnswer(cell.textField.text ?? "", operation: .add)
            }
        } else if index == 13 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "amountCell", for: IndexPath(index: 0)) as? AmountCollectionViewCell {
                handleAnswer("\(cell.amount)", operation: .add)
            }
        } else if index == 22 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "face", for: IndexPath(index: 0)) as? FaceCollectionViewCell {
                
                handleAnswer(cell.selectedOption, operation: .add)
                
            }
        } 
        
       
        
      
        
    }
    
    
}
