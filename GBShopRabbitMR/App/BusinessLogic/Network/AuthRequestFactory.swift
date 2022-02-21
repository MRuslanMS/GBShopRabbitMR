//
//  AuthRequestFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func logic(userName: String, password: String, completionHandler:@escaping(AFDataResponse<LoginResult>) -> Void)
    func logout(idUser: Int, completionHandler: @escaping(AFDataResponse<LoginResult>) -> Void)
}
