//
//  ViewController.swift
//  GBShopRabbitMR
//
//  Created by Ruslan Magomedov on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {
    let requestFactory = RequestFactory()

    override func viewDidLoad() {
        super.viewDidLoad()
        //authLogin(login: "GB", password: "Gb1234")
        //authLogout(login: "GB", password: "Gb1234")
        //userRegistration(userId: 123, userLogin: "GBRabbit", password: "Gb12345678", userName: "Genadiy", userLastname: "Bukin", userEmail: "rus@mag.ru", userGender: "man", userCreditCardNumber: "9872389242423422", userBio: "best is the best")
        //userDataChanges(userId: 123, userLogin: "GBRabbit", password: "Gb12345678", userName: "Genadiy", userLastname: "Bukin", userEmail: "rus@mag.ru", userGender: "man", userCreditCardNumber: "9872389242423422", userBio: "best is the best")
        //getProductList(pageNumber: 1, idCategory: 1)
        getProductReviewsList(productId: 123)
        //addProductReview(productId: 123, userName: "Kevin", productRating: 5, userReview: "Very good")
        //cancelProductReview(productId: 123, userName: "Kevin", reviewId: 76857)
        //authRequest()
    }
    
  /*
    func authRequest() {
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
   */
     
    func authLogin(login: String, password: String) {
            let auth = requestFactory.makeAuthRequestFactory()
            auth.login(userLogin: login, password: password) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
    func authLogout(login: String, password: String) {
            let auth = requestFactory.makeAuthRequestFactory()
            auth.logout(userLogin: login, password: password) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
        
    func userRegistration(userId: Int, userLogin: String, password: String, userName: String, userLastname: String, userEmail: String, userGender: String,  userCreditCardNumber: String, userBio: String) {
            let registration = requestFactory.makeRegistrationAndDataChangesFactory()
        registration.registration(userId: userId, userLogin: userLogin, password: password, userName: userName, userLastName: userLastname, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
    func userDataChanges(userId: Int, userLogin: String, password: String, userName: String, userLastname: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String) {
            let userChanges = requestFactory.makeRegistrationAndDataChangesFactory()
            userChanges.dataChange(userId: userId, userLogin: userLogin, password: password, userName: userName, userLastName: userLastname, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
    func getProductList(pageNumber: Int, idCategory: Int) {
            let getProducts = requestFactory.makeProductsFactory()
            getProducts.productList(pageNumber: pageNumber, idCategory: idCategory) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
           
    func getProduct(idProduct: Int) {
            let getProducts = requestFactory.makeProductsFactory()
            getProducts.product(idProduct: idProduct) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    
    func getProductReviewsList(productId: Int) {
           let getReviewsList = requestFactory.makeProductsReviewsFactory()
           getReviewsList.productReviewsList(productId: productId) { response in
               switch response.result {
               case .success(let result):
                   print(result)
               case .failure(let error):
                   print(error.localizedDescription)
               }
           }
       }
       
       func addProductReview(productId: Int, userName: String, productRating: Int, userReview: String) {
           let addReview = requestFactory.makeProductsReviewsFactory()
           addReview.productReviewAdd(productId: productId, userName: userName, productRating: productRating, userReview: userReview) { response in
               switch response.result {
               case .success(let result):
                   print(result)
               case .failure(let error):
                   print(error.localizedDescription)
               }
           }
       }
       
       func cancelProductReview(productId: Int, userName: String, reviewId: Int) {
           let cancelReview = requestFactory.makeProductsReviewsFactory()
           cancelReview.productReviewCancel(productId: productId, userName: userName, reviewId: reviewId) { response in
               switch response.result {
               case .success(let result):
                   print(result)
               case .failure(let error):
                   print(error.localizedDescription)
               }
           }
       }
}

