//
//  CartOrderedProductsList.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.03.2022.
//

import Foundation

 struct CartOrderedProductsList: Codable {
     let count: Int
     let productsInCartList: [CartProduct]
 }
