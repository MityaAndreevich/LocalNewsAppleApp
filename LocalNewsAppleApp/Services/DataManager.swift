//
//  DataManager.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let headersApple = [
        "Названа дата выхода iOS 15",
        "Плановое обновление линейки",
        "iPhone 13 — уменьшенная монобровь, новый дисплей",
        "iPhone 13 Pro и 13 Pro Max — самые дорогие в истории",
        "iPad mini — первый редизайн за 9 лет",
        "Apple Watch — увеличенный экран"
    ]
    
    let briefsApple = [
        "Компания назвала дату выхода новой версии операционной системы для своих смартфонов",
        "Компания представила модели iPhone 13, 13 mini, 13 Pro и 13 Pro Max",
        "Ключевой особенностью актуальных смартфонов Apple оказался обновленный экран",
        "Базовый 13 Pro оценили в 999 долларов, 13 Pro Max — 1099 долларов",
        "В Apple назвали апдейт компактного планшета крупнейшим за всю историю",
        "Аксессуар вперые получил экран занимающий все переднее пространство"
    ]
    
    let datesApple = [
        "15.09.21", "14.09.21", "14.09.21",
        "14.09.21", "14.09.21", "14.09.21"
    ]

    let raitingsApple = [
        "5.0", "4.0", "3.0",
        "4.0", "2.1", "3.1"
    ]
    
    let headersSwift = ["Header Swift 1",
                   "Header Swift 2"]
    
    let briefsSwift = ["Brief Swift 1",
                  "Brief Swift 2"]
    
    let datesSwift = ["13.09.21",
                 "14.09.21"]
    
    let raitingsSwift = ["5.0",
                    "4.0"]
    
    private init() {}
}
