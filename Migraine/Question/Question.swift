//
//  Question.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import Foundation


struct Question : Codable {
    let question : String
    let optionImageNames : [String]
    var answers : [String]
}



struct QuestionBank {
    
    var questions = [Question]()
    init() {
        
        
        addQuestion(Question(question: "Hangi atak tipi olabilir", optionImageNames: ["Gerilim", "Küme", "Migren"], answers: []))
        addQuestion(Question(question: "Migren Atağınız ne zaman başladı", optionImageNames: ["az","60","başka"], answers: []))
       
        addQuestion(Question(question: "Migren Atağınız ne zaman sonlandı", optionImageNames: ["Bitiş Zamanı","Henüz Sonlanmadı"], answers: []))
        
        
        addQuestion(Question(question: "Migren atağı başladığında neredeydin?", optionImageNames: ["Evde","İşte","Okulda","Araçta","Dışarda","Uykuda","Tatilde"], answers: []))
        
        addQuestion(Question(question: "Aklına gelen potansiyel tetikleyiciyi seçebilir misin?", optionImageNames: ["Lodos","Hava Değişimi","Adet Öncesi","Adet Sırasında","Adet Bitiminde","Güneş","Ağır Spor Yapmak","Sigara Dumanı veya Sigara","Stress","Kırmızı Şarap","Diğer İçkiler","Gıda Tetiği"], answers: []))
        
        
       
        
        
    }
    
    mutating func addQuestion(_ q : Question) {
        questions.append(q)
    }
    
}
