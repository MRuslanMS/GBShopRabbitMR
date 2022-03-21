//
//  Product.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import Foundation

struct Product: Codable {
    let productPrice: Int
    let productName: String
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case productPrice
        case productName
        case productDescription
    }
}
