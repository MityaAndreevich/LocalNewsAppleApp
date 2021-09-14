//
//  DataManager.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 14.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let headersApple = ["Header 1",
                   "Header 2"]
    
    let briefsApple = ["Brief Apple 1",
                  "Brief Apple 2"]
    
    let datesApple = ["13.09.21",
                 "14.09.21"]
    
    let raitingsApple = ["5.0",
                    "4.0"]
    
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
