//
//  ProductReviewsList.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 15.03.2022.
//

import Foundation

struct ProductReviewsList: Codable {
    let count: Int
    let productReviews: [ProductReview]
}
