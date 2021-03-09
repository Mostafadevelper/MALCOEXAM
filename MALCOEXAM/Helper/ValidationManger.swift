////
////  ValidationManger.swift
////  Ecommerce
////
////  Created by Mostafa  on 9/28/20.
////  Copyright © 2020 Mostafa . All rights reserved.
////
//


import Foundation
import UIKit


enum ValidatorType {
    
    case name
    case phone
    case password
    case passwordMatches(confirmFiled: UITextField)
    case invalidId
    case required(fieldKey: String) // ex: name is required, email is required and so..
}


final class ValidationManger: NSObject {
    
    private override init() {}
    
    
    static func validateEmail(email : UITextField ) throws -> String {
        
        guard email.hasText else {
            throw ValidationErorr.emailEmpty
        }
        guard let emails = email.text , emails.count > 1 else {
            throw ValidationErorr.invalidEmail
            }
        
        return emails
    }
    
        static func validatePassword(password: UITextField) throws -> String {
            
            guard password.hasText else {
                
                throw ValidationErorr.emptypassword
            }
            guard let passText = password.text , passText.count > 3 else {
                throw ValidationErorr.passwordCount
            }
            return passText
        }
       
        static func validatePassword(password: UITextField, confirmpassword: UITextField) throws -> String {
            
            guard  confirmpassword.hasText else {
                throw ValidationErorr.emptypassword
            }
            guard let pass = password.text, let confirm = confirmpassword.text , pass == confirm  else {
                
                throw ValidationErorr.passwordMatch
            }
            return pass
        }

}


enum ValidationErorr: Error, LocalizedError {
    
    case invalidEmail
    case invalidPassword
    case emailEmpty
    case passwordCount
    case passwordMatch
    case emptypassword
    
    var localizedDescription: String {
        switch self {
        case .emailEmpty:
            return "Email is required!"
        case .invalidEmail:
            return "Wrong Email format"
        case .emptypassword:
            return "Password is required!"
        case .passwordCount:
            return "Password is too short"
        case .passwordMatch:
            return "Password not matches"
        case .invalidPassword:
            return "Passwords must be at least 8 characters and contain at 3 of 4 of the following: upper case (A-Z), lower case (a-z), number (0-9) and special character (e.g. !@#$%^&*)"
        }
    }
}
