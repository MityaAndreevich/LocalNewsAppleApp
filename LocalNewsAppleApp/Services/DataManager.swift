//
//  DataManager.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let headersApple = [
        "Названа дата выхода IOS 15",
        "Плановое обновление линейки",
        "iPhone 13 - уменьшенная монобровь, новый дисплей",
        "iPhone 13 Pro и 13 Pro Max - самые дорогие в истории",
        "iPad mini - первый редизайн за 9 лет",
        "Apple Watch - увеличенный экран"
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
    
    let headersSwift = [
        "Package Collections",
        "Swift 5.4 released!",
        "Swift Collections",
        "Diversity in Swift",
        "SwiftNIO SSH",
        "Swift Algorithms"
    ]
    
    let briefsSwift = [
        "The Swift Package Manager adds support for package collections.",
        "Variety of languge and tooling improvements.",
        "New functionality for the Swift Standart Library.",
        "Making it easier for developers to start learning or contributing to Swift.",
        "New project in Swift Server ecosystem.",
        "New open source package of algorithms along with their related types."
    ]
    
    let datesSwift = [
        "07.06.2021",
        "26.04.2021",
        "05.04.2021",
        "16.12.2020",
        "11.11.2020",
        "21.10.2020"
    ]
    
    let raitingsSwift = [
        "5.0",
        "4.0",
        "2.0",
        "4.3",
        "2.7",
        "3.3"
    ]
    
    private init() {}
}
