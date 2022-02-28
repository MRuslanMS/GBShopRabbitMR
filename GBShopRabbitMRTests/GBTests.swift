//
//  GBTests.swift
//  GBShopRabbitMRTests
//
//  Created by Ruslan Magomedov on 24.02.2022.
//
/*
import XCTest
import Alamofire
@testable import GBShopRabbitMR

class GBTests: XCTestCase {

 let expectation = XCTestExpectation(description: "Download https://failUrl"
 var errorParser: ErrorParserStub!
 
    override func setUpWithError() throws {
     super.setUp()
     errorParser = ErrorParserStub()
    }

    override func tearDownWithError() throws {

     super.tearDown()
     errorParser = nil
    }
    
    struct PostStub: Codable {
        let userId: Int
        let id: Int
        let title: String
        let body: String
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

    func testShouldDownloadAndParse() {
     AF.request("https://jsonplaceholder.typecode.com/posts/1")
         .responseCodable(errorParser: errorParser) { [weak self] (response: DataResponse<PostStub, AFError>) in
             switch response.result {
             case .success(_): break
             case.failure:
                 XCTFail()
             }
             self?.expectation.fulfill()
         }
     wait(for: [expectation], timeout: 10.0)
 }
        let errorParser = ErrorParserStub()
        
       /* func authRequest() {
            let auth = requestFactory.makeAuthRequestFactory()
            auth.login(userName: "Somebody", password: "MyPassword")
            { response in
                switch response.result {
                case .success(let login):
                    print(login)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
        func authLogin(userName: String, password: String) {
                let auth = requestFactory.makeAuthRequestFactory()
                auth.login(userName: "Somebody", password: "MyPassword") { response in
                    switch response.result {
                    case .success(let login):
                        print(login)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            }
       */
        
        AF.request(URLMock()).responseCodable(errorParser: errorParser) {
        (respose: DataResponse<PostStub, AFError>) in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
        }
    }

    
    func testExample() throws {
     XCTAssertTrue(true)
     XCTAssertFalse(false)
 }
    
    func testAuth() throws {
        XCTAssertFalse(false)
    }


*/
