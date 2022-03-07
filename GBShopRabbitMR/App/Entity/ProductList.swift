//
//  ProductList.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import Foundation

struct ProductList: Codable {
    let count: Int
    let productList: [Product]
}
