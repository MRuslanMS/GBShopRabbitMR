//
//  GBShopProductTests.swift
//  GBShopRabbitMRTests
//
//  Created by Ruslan Magomedov on 24.02.2022.
//

import XCTest
@testable import GBShopRabbitMR
import Alamofire

class GBShopProductTests: XCTestCase {

    let expectation = XCTestExpectation(description: "Download API data")
    var errorParser: ErrorParserStub!
    
    struct DefaultResultStub: Codable {
        let result: Int
        let userMessage: String?
        let errorMessage: String?
    }
    
    struct ProductListStub: Codable {
        let count: Int
        let productList: [Product]
    }

    struct ProductStub: Codable {
        let productPrice: Int
        let productName: String
        let productDescription: String
        
//        enum CodingKeys: String, CodingKey {
//                case productPrice
//                case productName
//            case productDescription
//            }
    }
    
    struct ProductReviewsListStub: Codable {
        let count: Int
        let productReviews: [ProductReview]
    }
    
    struct ProductReviewStub: Codable {
        let reviewId: Int
        let userName: String
        let productRating: Int
        let userReview: String
        
  //      enum CodingKeys: String, CodingKey {
  //          case reviewId
  //          case userName
  //          case productRating
  //          case userReview
  //      }
    }

    enum ApiErrorStub: Error {
        case fatalError
    }

    struct ErrorParserStub: AbstractErrorParser {
        func parse(_ result: Error) -> Error {
            return ApiErrorStub.fatalError
        }
        
        func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
            return error
        }
    }

    override func setUpWithError() throws {
        try super.setUpWithError()
        errorParser = ErrorParserStub()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        errorParser = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
       // self.measure {
            // Put the code you want to measure the time of here.
       // }
    }
    
    func testProductRequest() {
        let errorParser = ErrorParserStub()
        let productId = 1
        var parameters: Parameters? {
            return [
                "productId": productId
            ]
        }
        
        AF.request("https://still-tundra-91444.herokuapp.com//product", method: .post, parameters: parameters).responseCodable(errorParser: errorParser) { (response: DataResponse<ProductStub, AFError>) in
            switch response.result {
            case .success(_):
                break
            case .failure: XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testProductListRequest() {
        let errorParser = ErrorParserStub()
        let pageNumber = 1
        let categoryId = 1
        var parameters: Parameters? {
            return [
                "pageNumber": pageNumber,
                "categoryId": categoryId
            ]
        }
        
        AF.request("https://still-tundra-91444.herokuapp.com/productList", method: .post, parameters: parameters).responseCodable(errorParser: errorParser) { (response: DataResponse<ProductListStub, AFError>) in
            switch response.result {
            case .success(_):
                break
            case .failure: XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testProductReviewsListRequest() {
        let errorParser = ErrorParserStub()
        let productId = 123
        var parameters: Parameters? {
            return [
                "productId": productId
            ]
        }
        
        AF.request("https://still-tundra-91444.herokuapp.com/productReviewsList", method: .post, parameters: parameters).responseCodable(errorParser: errorParser) { (response: DataResponse<ProductReviewsListStub, AFError>) in
            switch response.result {
            case .success(_):
                break
            case .failure: XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testProductReviewAddRequest() {
        let errorParser = ErrorParserStub()
        let productId = 1
        let userName = "Kevin"
        let productRating = 5
        let userReview = "Good"
        var parameters: Parameters? {
            return [
                "productId": productId,
                "userName": userName,
                "productRating": productRating,
                "userReview": userReview
            ]
        }
        
        AF.request("https://still-tundra-91444.herokuapp.com/productReviewAdd", method: .post, parameters: parameters).responseCodable(errorParser: errorParser) { (response: DataResponse<DefaultResultStub, AFError>) in
            switch response.result {
            case .success(_):
                break
            case .failure: XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testProductReviewCancelRequest() {
        let errorParser = ErrorParserStub()
        let productId = 1
        let userName = "Kevin"
        let reviewId = 5
        var parameters: Parameters? {
            return [
                "productId": productId,
                "userName": userName,
                "reviewId": reviewId
            ]
        }
        
        AF.request("https://still-tundra-91444.herokuapp.com/productReviewCancel", method: .post, parameters: parameters).responseCodable(errorParser: errorParser) { (response: DataResponse<DefaultResultStub, AFError>) in
            switch response.result {
            case .success(_):
                break
            case .failure: XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }
}
