//
//  AppleNews.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

import Foundation

struct AppleNews {
    let header: String
    let brief: String
    let date: String
    let raiting: String
}
extension AppleNews {
    static func getNewsList() -> [AppleNews] {
        var allAppleNews: [AppleNews] = []
        
        let headers = DataManager.shared.headersApple
        let briefs = DataManager.shared.briefsApple
        let dates = DataManager.shared.datesApple
        let raitings = DataManager.shared.raitingsApple
        
        let iterationsCount = min(
            headers.count,
            briefs.count,
            dates.count,
            raitings.count
        )
        
        for index in 0..<iterationsCount {
            let news = AppleNews(
                header: headers[index],
                brief: briefs[index],
                date: dates[index],
                raiting: raitings[index]
            )
            allAppleNews.append(news)
        }
        return allAppleNews
    }
}
