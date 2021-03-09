//
//  UIViewController.swift
//  MALCOEXAM
//
//  Created by Mostafa on 2/4/21.
//  Copyright © 2021 admin1. All rights reserved.
//

import UIKit

typealias CustomAlertClosure = ((UIAlertAction) -> Void)

extension UIViewController {
    
    func showCustomAlert(title: String, message: String, doneButtonTitle: String, doneAction: (CustomAlertClosure)? = nil, cancelButtonTitle: String = "", cancelActin: (CustomAlertClosure)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: doneButtonTitle, style: .default, handler: doneAction))
        if !cancelButtonTitle.isEmpty {
            alert.addAction(UIAlertAction(title: cancelButtonTitle, style: .default, handler: cancelActin))
        }
        present(alert, animated: true, completion: nil)
    }
    
    func goToLoginPage(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "LoginViewController")
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }

    func goToSignUp(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)

    }
}

