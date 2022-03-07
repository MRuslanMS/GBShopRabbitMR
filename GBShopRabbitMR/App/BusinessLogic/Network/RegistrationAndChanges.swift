//
//  RegistrationAndChanges.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation
import Alamofire

class RegistrationAndChanges: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://still-tundra-91444.herokuapp.com/")!
    
    init (errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)){
         self.errorParser = errorParser
         self.sessionManager = sessionManager
         self.queue = queue
    }
}

extension RegistrationAndChanges: RegistrationAndDataChangesFactory {
    func registration(userId: Int, userLogin: String, password: String, userName: String, userLastName: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<DefaultResult>) -> Void) {
        
        let requestModel = Registration(baseUrl: baseUrl, userId: userId, userLogin: userLogin, password: password, userName: userName, userLastName: userLastName, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    func dataChange(userId: Int, userLogin: String, password: String, userName: String, userLastName: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<DefaultResult>) -> Void) {
        
        let requestModel = Changes(baseUrl: baseUrl, userId: userId, userLogin: userLogin, password: password, userName: userName, userLastName: userLastName, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension RegistrationAndChanges {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "registration"
        
        let userId: Int
        let userLogin: String
        let password: String
        let userName: String
        let userLastName: String
        let userEmail: String
        let userGender: String
        let userCreditCardNumber: String
        let userBio: String
        
        var parameters: Parameters? {
            return[
                "id_User": userId,
                "userlogin": userLogin,
                "password": password,
                "username": userName,
                "userlastname": userLastName,
                "email": userEmail,
                "gender": userGender,
                "credit_card": userCreditCardNumber,
                "bio": userBio
            ]
        }
    }
}

extension RegistrationAndChanges {
    struct Changes: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "changeData"
        
        let userId: Int
        let userLogin: String
        let password: String
        let userName: String
        let userLastName: String
        let userEmail: String
        let userGender: String
        let userCreditCardNumber: String
        let userBio: String
        
        var parameters: Parameters? {
            return[
                "id_User": userId,
                "userlogin": userLogin,
                "password": password,
                "username": userName,
                "userlastname": userLastName,
                "email": userEmail,
                "gender": userGender,
                "credit_card": userCreditCardNumber,
                "bio": userBio
            ]
        }
        
    }
}
