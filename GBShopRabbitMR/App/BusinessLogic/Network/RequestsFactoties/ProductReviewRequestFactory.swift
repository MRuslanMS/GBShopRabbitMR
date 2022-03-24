//
//  ProductReviewRequestFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 15.03.2022.
//

import Foundation
import Alamofire

protocol ProductsReviewsRequestFactory {
    func productReviewsList(productId: Int, completionHandler: @escaping (AFDataResponse<ProductReviewsList>) -> Void)
    func productReviewAdd(productId: Int, userName: String, productRating: Int, userReview: String, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
    func productReviewCancel(productId: Int, userName: String, reviewId: Int, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
}
