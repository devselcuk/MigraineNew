//
//  OnBoardFactory.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import Foundation


struct  OnboardItem {
    let imageName, iconName, title, message : String
}


struct OnboardFactory {
    var items = [OnboardItem]()
    
    init() {
        items.append(OnboardItem(imageName: "boardImage1", iconName: "board1", title: "Bize Ağrılarını Anlat", message: "Migren ağrının oluşumu ve etkileri hakkında bilgiler ver!"))
        items.append(OnboardItem(imageName: "boardImage2", iconName: "board2", title: "Detaylı Raporlamalar Elde Et", message: "Migren ağrılarını kaydet ve sana detaylıraporlamalar sunalım!"))
        items.append(OnboardItem(imageName: "boardImage3", iconName: "board3", title: "Bilgi En Büyük Mücadele Yöntemidir!", message: "Senin için oluşturduğumuz blog içerikler ile ağrılarla başa çıkmak artık daha kolay."))
    }
}
