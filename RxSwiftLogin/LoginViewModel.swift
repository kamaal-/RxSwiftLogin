//
//  LoginViewModel.swift
//  RxSwiftLogin
//
//  Created by Kamaal on 7/3/17.
//  Copyright © 2017 Kamaal. All rights reserved.
//

import Foundation
import RxSwift

struct LoginViewModel {
    
    let username = Variable<String>("")
    let password = Variable<String>("")
    let isValid: Observable<Bool>
    
    init() {
        isValid = Observable.combineLatest(self.username.asObservable(), self.password.asObservable()) {
            (username, password) in
            return username.characters.count > 0 && password.characters.count > 0
        }
    }
}
