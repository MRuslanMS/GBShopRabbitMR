//
//  ProductsRequests.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 24.02.2022.
//


import Foundation
import Alamofire


class ProductsRequests: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://still-tundra-91444.herokuapp.com/")!
    
    init (errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension ProductsRequests:  ProductsRequestFactory {
    func productList(pageNumber: Int, idCategory: Int, completionHandler: @escaping (AFDataResponse<[ProductList]>) -> Void) {
        let requestModel = ProductListRequest(baseUrl: baseUrl, pageNumber: pageNumber, idCategory: idCategory)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func product(idProduct: Int, completionHandler: @escaping (AFDataResponse<Product>) -> Void) {
        let requestModel = ProductRequest(baseUrl: baseUrl, idProduct: idProduct)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension ProductsRequests {
    struct ProductListRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "productList"
        
        let pageNumber: Int
        let idCategory: Int
        
        var parameters: Parameters? {
            return [
                "page_number": pageNumber,
                "id_category": idCategory,
            ]
        }
    }
}

extension ProductsRequests {
    struct ProductRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "product"
        
        let idProduct: Int
        
        var parameters: Parameters? {
            return [
                "id_product": idProduct,
            ]
        }
    }
}
