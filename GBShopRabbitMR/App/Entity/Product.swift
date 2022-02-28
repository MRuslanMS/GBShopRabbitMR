//
//  Product.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import Foundation

struct Product: Codable {
    let result: Int
    let productName: String
    let productPrice: Int
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
}
