//
//  SwiftNews.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

import Foundation

struct SwiftNews {
    let header: String
    let brief: String
    let date: String
    let raiting: String
}
extension SwiftNews {
    static func getNewsList() -> [SwiftNews] {
        var allSwiftNews: [SwiftNews] = []
        
        let headers = DataManager.shared.headersSwift
        let briefs = DataManager.shared.briefsSwift
        let dates = DataManager.shared.datesSwift
        let raitings = DataManager.shared.raitingsSwift
        
        let iterationsCount = min(
            headers.count,
            briefs.count,
            dates.count,
            raitings.count
        )
        
        for index in 0..<iterationsCount {
            let news = SwiftNews(
                header: headers[index],
                brief: briefs[index],
                date: dates[index],
                raiting: raitings[index]
            )
            allSwiftNews.append(news)
        }
        return allSwiftNews
    }
}
