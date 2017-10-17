//
//  ViewController.swift
//  RxSwiftLogin
//
//  Created by Kamaal on 7/2/17.
//  Copyright © 2017 Kamaal. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    var loginViewModel = LoginViewModel()
    var bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.rx.text
            .orEmpty
            .bind(to: loginViewModel.username)
            .disposed(by: bag)
        
        passwordTextField.rx.text
            .orEmpty
            .bind(to: loginViewModel.password)
            .disposed(by: bag)
        
        loginViewModel.isValid
            .bind(to: confirmButton.rx.isEnabled)
            .disposed(by: bag)
        
    }
}
