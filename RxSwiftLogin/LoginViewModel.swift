//
//  LoginViewModel.swift
//  RxSwiftLogin
//
//  Created by Kamaal on 7/3/17.
//  Copyright © 2017 Kamaal. All rights reserved.
//

import Foundation

struct LoginViewModel {
    var username: String = ""
    var password: String = ""
    
    func attemptToLogin() {
        let params = [
            "username": username,
            "password": password
        ]
        
    }
}
