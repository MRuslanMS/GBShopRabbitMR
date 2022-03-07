//
//  User.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation

struct User: Codable {
    let userId: Int
    let userLogin: String
    let userName: String
    let userLastName: String
    
    enum CodingKeys: String, CodingKey{
        case userId
        case userLogin
        case userName
        case userLastName
    }
}
