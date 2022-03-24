//
//  RegistrationAndDataChangesFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation
import Alamofire

protocol RegistrationAndDataChangesFactory{
    func registration(userId: Int, userLogin: String, password: String, userName: String, userLastName: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<DefaultResult>) -> Void)
    func dataChange(userId: Int, userLogin: String, password: String, userName: String, userLastName: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<DefaultResult>) -> Void)
}
