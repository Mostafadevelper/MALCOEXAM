//
//  SignUpViewController.swift
//  MALCOEXAM
//
//  Created by Mostafa on 2/4/21.
//  Copyright © 2021 admin1. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK:- Layout :-
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARK:- Variable & Constants
    var viewModel = AuthenticationViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showPasswordAction(_ sender: Any) {
        passwordTF.isSecureTextEntry = passwordTF.isSecureTextEntry ? false : true
    }

    @IBAction func signUpAction(_ sender: Any) {
        
        do {
            let email = try ValidationManger.validateEmail(email: emailTF)
            let password = try ValidationManger.validatePassword(password: passwordTF)
            signUp(email: email, password: password)
        }catch let error
        {
            if let error = error as? ValidationErorr
            {
                showCustomAlert(title: "error", message: error.localizedDescription, doneButtonTitle: "oK")
            }
        }
    }
    
    @IBAction func signInAction(_ sender: Any) {
        self.goToLoginPage()
    }
    
}

//MARK:- NetWork :-
extension SignUpViewController {
    
    func signUp(email: String, password: String ) {
        viewModel.register(email: email, password: password ) { [weak self] user, error in
            guard let strongSelf = self else { return }
            if let error = error {
                strongSelf.showCustomAlert(title: error.title ?? "", message: error.message ?? "", doneButtonTitle: "oK")
            }  else{
                self?.showCustomAlert(title: "success", message: "user Login Successful" , doneButtonTitle: "ok")
            }
        }
    }
    
}


