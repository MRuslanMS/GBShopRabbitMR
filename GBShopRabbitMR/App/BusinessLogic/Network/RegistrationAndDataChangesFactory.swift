//
//  RegistrationAndDataChangesFactory.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 21.02.2022.
//

import Foundation
import Alamofire

protocol RegistrationAndDataChangesFactory{
    func registration(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<RegistrationUserResult>) -> Void)
    func dataChange(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String, completionHandler: @escaping(AFDataResponse<ChangeUserDataResult>) -> Void)
}
