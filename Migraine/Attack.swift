//
//  Attack.swift
//  Migraine
//
//  Created by Asiye on 2.01.2021.
//

import Foundation


struct Attack {
    let id : String
    let date : Date
    let interval : TimeInterval
    var questions : [Question]
    
    var monthName : String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        formatter.locale = Locale(identifier: "tr")
        return formatter.string(from: date)
    }
    
    var dateString : String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM"
        formatter.locale = Locale(identifier: "tr")
        return formatter.string(from: date)
    }
    
    
}

struct SummaryItem {
    var index : Int
    var result : [String]
   
    var title : String {
        switch index {
        case 0:
            return "Hava Durumu"
        case 1:
            return "Atak Türü"
        case 2:
            return "Ne Zaman Başladı"
        case 3:
            return "Ne Zaman Sonlandı"
        case 4:
            
                return "Şiddet"
            
        case 5:
            return "Potansiyel Tetikleyiciler"
        case 6:
            return "Adet Zamanı"
        case 7:
            return "Aura"
        case 8:
            return "Ağrı Öncesi"
        case 9:
            return "Semptomlar"
        case 10 :
            return "İlaç Adı, Miktarı, Zamanı"
        case 11:
            return "Rahatlama Yöntemleri"
        case 12:
            return "Etkileri"
        case 13:
            return "Ağrı Sonrası"
        case 14 :
            return "Ağrının Başladığı Yer"
        case  15 :
            return "Ağrının Yayıldığı Yer"
        case 16 :
           return "Yardımcı Seçenek"
        case 17 :
            return "Not"
  
            
        default:
            return ""
        }
    }
    
    
    var showImage : Bool {
        switch index {
        case 4, 14, 15:
            return true
        default:
            return false
        }
    }
    
    
    var answerString : String {
        var a = ""
        for i in result {
            a.append("\(i),")
        }
        
        return a
    }
    
    
}

class AttackProccessor {
    let attack : Attack
    var attackSummary = [SummaryItem]()
    init(attack : Attack) {
        self.attack = attack
        let firsItem = SummaryItem(index: 0, result: ["23˚C"])
        attackSummary.append(firsItem)
        
        for i in attack.questions {
           
                if let firstIndex = attackSummary.firstIndex(where: { $0.title == i.title}) {
                    attackSummary[firstIndex].result.append(contentsOf: i.answers)
                } else {
                    attackSummary.append(SummaryItem(index: attackSummary.count, result: i.answers))
                }
         
            
           
        }
    }
}
