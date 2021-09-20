//
//  User.swift
//  LocalNewsAppleApp
//
//  Created by Dmitry Logachev on 20.09.2021.
//

import Foundation

struct User {
     var email: String
     var password: String

     static func getUser() -> User {
         User(email: "email", password: "password")
     }
 }
