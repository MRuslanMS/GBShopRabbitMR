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
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
    init (errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)){
         self.errorParser = errorParser
         self.sessionManager = sessionManager
         self.queue = queue
    }
}

extension RegistrationAndChanges: RegistrationAndDataChangesFactory {
    func registration(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<RegistrationUserResult>) -> Void) {
        
        let requestModel = Registration(baseUrl: baseUrl, idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    func dataChange(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<ChangeUserDataResult>) -> Void) {
        
        let requestModel = Changes(baseUrl: baseUrl, idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension RegistrationAndChanges {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        
        let idUser: Int
        let userName: String
        let password: String
        let userEmail: String
        let userGender: String
        let userCreditCardNumber: String
        let userBio: String
        
        var parameters: Parameters? {
            return[
                "id_User": idUser,
                "username": userName,
                "password": password,
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
        let method: HTTPMethod = .get
        let path: String = "changeUserData.json"
        
        let idUser: Int
        let userName: String
        let password: String
        let userEmail: String
        let userGender: String
        let userCreditCardNumber: String
        let userBio: String
        
        var parameters: Parameters? {
            return[
                "id_User": idUser,
                "username": userName,
                "password": password,
                "email": userEmail,
                "gender": userGender,
                "credit_card": userCreditCardNumber,
                "bio": userBio
            ]
        }
        
    }
}
