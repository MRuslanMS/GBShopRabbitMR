//
//  ProductsRequestFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import Foundation
import Alamofire

protocol ProductsRequestFactory {
    func productList(pageNumber: Int, idCategory: Int, completionHandler: @escaping (AFDataResponse<[ProductList]>) -> Void)
    func product(idProduct: Int, completionHandler: @escaping (AFDataResponse<Product>) -> Void)
}
