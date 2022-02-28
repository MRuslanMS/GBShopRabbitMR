//
//  ProductList.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import Foundation

struct ProductList: Codable {
    let id: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case price
    }
}
