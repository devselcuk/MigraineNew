//
//  Question.swift
//  Migraine
//
//  Created by Asiye on 30.12.2020.
//

import Foundation






struct Question : Codable {
    let index : Int
    let question : String
    let optionImageNames : [String]
    var answers : [String]
}



struct QuestionBank {
    
    var questions = [Question]()
    init() {
        
        
        addQuestion(Question(index: 0, question: "Hangi atak tipi olabilir", optionImageNames: ["Gerilim", "Küme", "Migren"], answers: []))
        addQuestion(Question(index: 1, question: "Migren Atağınız ne zaman başladı", optionImageNames: ["az","60","başka"], answers: []))
       
        addQuestion(Question(index: 3, question: "Migren Atağınız ne zaman sonlandı", optionImageNames: ["Bitiş Zamanı","Henüz Sonlanmadı"], answers: []))
        
        addQuestion(Question(index: 4, question: "Bu atağınızın en yüksek ağrı seviyesi nedir?", optionImageNames: ["Ağrı Yok","Hafif","Orta","Şiddetli","Çok Şiddetli (Hastaneye gitmek zorunda)"], answers: []))
        
        
        addQuestion(Question(index: 5, question: "Migren atağı başladığında neredeydin?", optionImageNames: ["Evde","İşte","Okulda","Araçta","Dışarda","Uykuda","Tatilde"], answers: []))
        
        addQuestion(Question(index: 6, question: "Aklına gelen potansiyel tetikleyiciyi seçebilir misin?", optionImageNames: ["Lodos","Hava Değişimi","Adet Öncesi","Adet Sırasında","Adet Bitiminde","Güneş","Ağır Spor Yapmak","Sigara Dumanı veya Sigara","Stress","Kırmızı Şarap","Diğer İçkiler","Gıda Tetiği"], answers: []))
        
        addQuestion(Question(index: 7, question: "Aklına gelen potansiyel tetikleyiciyi seçebilir misin?", optionImageNames: ["Boyunda Tutulma","Susuzluk","Kötü Kokular (ağır koku)","Fikrim Yok"], answers: []))
        
        addQuestion(Question(index: 8, question: "Adetin Ne Zaman?", optionImageNames: ["Yakında Gelecek","Adet Dönemi İçindeyim","Yeni Bitti"], answers: []))
        
        addQuestion(Question(index: 9, question: "Auralı mısın?(Ağrı öncesi veya başlangıcında 5-60 dakika süreli)", optionImageNames: ["Görememe","Uyuşukluk","Kuvvetsizlik","Çift Görme","Şiddetli Baş Dönmesi","Işık Çakması ve Kırık Çizgiler","Kelimeleri Bulamama","Bunlar Yok"], answers: []))
        
        addQuestion(Question(index: 10, question: "Ağrı öncesi bunları yaşar mısın?", optionImageNames: ["Yorgunluk","Esneme","Gerginlik","Enerjik Hissetme","Üzgün Hissetme","Baş Dönmesi","İshal ve Sık İdrara Çıkma"], answers: []))
        
        addQuestion(Question(index: 11, question: "Hangi semptomları yaşıyorsun?", optionImageNames: ["Sıkıştırıcı Ağrı","Zonklayıcı Ağrı","Basınç Hissi","Hareketle Ağrıda Artış","Mide Bulantısı","Kusma","Sesten Rahatsızlık","Kokudan Rahatsızlık","Boyun Ağrısı","Burun Akıntısı","Şiddetli Baş Dönmesi","Kayıkta Sallanır Gibi Baş Dönmesi","Işıktan Rahatsızlık"], answers: []))
        
        addQuestion(Question(index: 12, question: "Herhangi bir ilaç kullandın mı?", optionImageNames: ["Evet","Hayır"], answers: []))
        
        addQuestion(Question(index: 13, question: "Bu rahatlama yöntemlerinden herhangi birini denediniz mi?", optionImageNames: ["Karanlık Odada İstirahat","Uyku","Yemek","Buz Terapisi","Boyna Sıcak Uygulama","Su İçmek","Kahve","Sıcak Duş","Sessiz Odada İstirahat","Meditasyon"], answers: []))
        
        addQuestion(Question(index: 14, question: "Hayatınızı Nasıl Etkiledi", optionImageNames: ["İşe Gidememe","Çalışmada Verim Düşmesi","Okula Gidememe","Okul Veriminin Düşmesi","Sosyal Aktivite Kaçırma","Evde Kalma","Aile İlişkilerinde Kayıp","Uykuya Geçememe","Ağrıdan Uyanmak","Ekrana Bakamama","Konsantre Olamamak"], answers: []))
        
        
        addQuestion(Question(index: 15, question: "Ağrı sonrası bunları yaşar mısın?", optionImageNames: ["Yorgunluk","Esneme","Gerginlik","Enerjik Hissetme","Üzgün Hissetme","Baş Dönmesi","İshal ve Sık İdrara Çıkma"], answers: []))
        addQuestion(Question(index: 16, question: "Bu rahatlama seçeneklerinden hangisi yardımcı oldu?", optionImageNames: ["İlaç","Yemek","Meditasyon"], answers: []))
        
        
    }
    
    mutating func addQuestion(_ q : Question) {
        questions.append(q)
    }
    
}
