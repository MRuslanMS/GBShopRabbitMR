//
//  AuthRequestFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userLogin: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
    func logout(userLogin: String, password: String, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
}
