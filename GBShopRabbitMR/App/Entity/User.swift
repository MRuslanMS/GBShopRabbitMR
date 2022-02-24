//
//  User.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation

struct User: Codable {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    
    enum CodingKeys: String, CodingKey{
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
    }
}
