//
//  Question.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import Foundation


enum AnswerOperation {
    case add
    case remove
}



struct Question : Codable {
    let index : Int
    let question : String
    let optionImageNames : [String]
    var answers : [String]
    var needTextInput = false
    var date : Date?
    
    var title : String {
        switch index {
      
        case 0:
            return "Atak Türü"
        case 1:
            return "Ne Zaman Başladı"
        case 2:
            return "Ne Zaman Sonlandı"
        case 3:
                return "Şiddet"
            
        case 5,6:
            return "Potansiyel Tetikleyiciler"
        case 7:
            return "Adet Zamanı"
        case 8:
            return "Aura"
        case 9:
            return "Ağrı Öncesi"
        case 10:
            return "Semptomlar"
        case 12,13 :
            return "İlaç Adı, Miktarı, Zamanı"
        case 14:
            return "Rahatlama Yöntemleri"
        case 15:
            return "Etkileri"
        case 16:
            return "Ağrı Sonrası"
        case 18,19 :
            return "Ağrının Başladığı Yer"
        case  20 :
            return "Ağrının Yayıldığı Yer"
        case 21 :
           return "Yardımcı Seçenek"
        case 22 :
            return "Not"
  
            
        default:
            return ""
        }
    }
    
    
}



struct QuestionBank {
    
    var questions = [Question]()
    init() {
        
        
        addQuestion(Question(index: 0, question: "Hangi atak tipi olabilir", optionImageNames: ["Gerilim", "Küme", "Migren"], answers: []))
        addQuestion(Question(index: 1, question: "Migren Atağınız ne zaman başladı", optionImageNames: ["az","60","başka"], answers: [], needTextInput: true))
       
        addQuestion(Question(index: 2, question: "Migren Atağınız ne zaman sonlandı", optionImageNames: ["Bitiş Zamanı","Henüz Sonlanmadı"], answers: [], needTextInput: true))
        
        addQuestion(Question(index: 3, question: "Bu atağınızın en yüksek ağrı seviyesi nedir?", optionImageNames: ["Ağrı Yok","Hafif","Orta","Şiddetli","Çok Şiddetli (Hastaneye gitmek zorunda)"], answers: []))
        
        
        addQuestion(Question(index: 4, question: "Migren atağı başladığında neredeydin?", optionImageNames: ["Evde","İşte","Okulda","Araçta","Dışarda","Uykuda","Tatilde"], answers: []))
        
        addQuestion(Question(index: 5, question: "Aklına gelen potansiyel tetikleyiciyi seçebilir misin?", optionImageNames: ["Lodos","Hava Değişimi","Adet Öncesi","Adet Sırasında","Adet Bitiminde","Güneş","Ağır Spor Yapmak","Sigara Dumanı veya Sigara","Stress","Kırmızı Şarap","Diğer İçkiler","Gıda Tetiği"], answers: []))
        
        addQuestion(Question(index: 6, question: "Aklına gelen potansiyel tetikleyiciyi seçebilir misin?", optionImageNames: ["Boyunda Tutulma","Susuzluk","Kötü Kokular (ağır koku)","Fikrim Yok"], answers: []))
        
        addQuestion(Question(index: 7, question: "Adetin Ne Zaman?", optionImageNames: ["Yakında Gelecek","Adet Dönemi İçindeyim","Yeni Bitti"], answers: []))
        
        addQuestion(Question(index: 8, question: "Auralı mısın?(Ağrı öncesi veya başlangıcında 5-60 dakika süreli)", optionImageNames: ["Görememe","Uyuşukluk","Kuvvetsizlik","Çift Görme","Şiddetli Baş Dönmesi","Işık Çakması ve Kırık Çizgiler","Kelimeleri Bulamama","Bunlar Yok"], answers: []))
        
        addQuestion(Question(index: 9, question: "Ağrı öncesi bunları yaşar mısın?", optionImageNames: ["Yorgunluk","Esneme","Gerginlik","Enerjik Hissetme","Üzgün Hissetme","Baş Dönmesi","İshal ve Sık İdrara Çıkma"], answers: []))
        
        addQuestion(Question(index: 10, question: "Hangi semptomları yaşıyorsun?", optionImageNames: ["Sıkıştırıcı Ağrı","Zonklayıcı Ağrı","Basınç Hissi","Hareketle Ağrıda Artış","Mide Bulantısı","Kusma","Sesten Rahatsızlık","Kokudan Rahatsızlık","Boyun Ağrısı","Burun Akıntısı","Şiddetli Baş Dönmesi","Kayıkta Sallanır Gibi Baş Dönmesi","Işıktan Rahatsızlık"], answers: []))
        
        addQuestion(Question(index: 11, question: "Herhangi bir ilaç kullandın mı?", optionImageNames: ["Evet","Hayır"], answers: []))
        addQuestion(Question(index: 12, question: "Kullandığınız ilacın ismi ve zamanı nedir?", optionImageNames: [], answers: []))
        addQuestion(Question(index: 13, question: "İlaç Miktarınız", optionImageNames: ["Custom"], answers: []))
        
        addQuestion(Question(index: 14, question: "Bu rahatlama yöntemlerinden herhangi birini denediniz mi?", optionImageNames: ["Karanlık Odada İstirahat","Uyku","Yemek","Buz Terapisi","Boyna Sıcak Uygulama","Su İçmek","Kahve","Sıcak Duş","Sessiz Odada İstirahat","Meditasyon"], answers: []))
        
        addQuestion(Question(index: 15, question: "Hayatınızı Nasıl Etkiledi", optionImageNames: ["İşe Gidememe","Çalışmada Verim Düşmesi","Okula Gidememe","Okul Veriminin Düşmesi","Sosyal Aktivite Kaçırma","Evde Kalma","Aile İlişkilerinde Kayıp","Uykuya Geçememe","Ağrıdan Uyanmak","Ekrana Bakamama","Konsantre Olamamak"], answers: []))
        
        
        addQuestion(Question(index: 16, question: "Ağrı sonrası bunları yaşar mısın?", optionImageNames: ["Yorgunluk","Esneme","Gerginlik","Enerjik Hissetme","Üzgün Hissetme","Baş Dönmesi","İshal ve Sık İdrara Çıkma"], answers: []))
        addQuestion(Question(index: 17, question: "Bu rahatlama seçeneklerinden hangisi yardımcı oldu?", optionImageNames: ["İlaç","Yemek","Meditasyon"], answers: []))
        
        
        addQuestion(Question(index: 18, question: "Ağrı Nerede Başladı", optionImageNames: ["right","left","middle","back","leftEye","rightEye"], answers: []))
        
        addQuestion(Question(index: 19, question: "Ağrı Nerede Başladı", optionImageNames: ["leftNeck","rightNeck","middle","eye"], answers: []))
        addQuestion(Question(index: 20, question: "Ağrı nereye yayılıyor?", optionImageNames: ["right","back","rightNeck"], answers: []))
        
        addQuestion(Question(index: 21, question: "Bu rahatlama seçeneklerinden hangisi yardımcı oldu?", optionImageNames: ["İlaç","Yemek","Meditasyon"], answers: []))
        addQuestion(Question(index: 22, question: "Aldığınız ilaç size yardımcı oldu mu?", optionImageNames: [], answers: []))
        addQuestion(Question(index: 23, question: "Herhangi bir notunuz var mı?", optionImageNames: [""], answers: [], needTextInput: true))
    
    }
    
    mutating func addQuestion(_ q : Question) {
        questions.append(q)
    }
    
}
