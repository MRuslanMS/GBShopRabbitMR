//
//  LogoutResult.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation

struct DefaultResult: Codable {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
}
