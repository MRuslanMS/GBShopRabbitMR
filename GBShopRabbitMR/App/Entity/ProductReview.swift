//
//  ProductReview.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 15.03.2022.
//

import Foundation

struct ProductReview: Codable {
    let reviewId: Int
    let userName: String
    let productRating: Int
    let userReview: String
}
