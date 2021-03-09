//
//  ViewController.swift
//  MALCOEXAM
//
//  Created by Mostafa on 2/4/21.
//  Copyright © 2021 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Life Cycle :-
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- go Login VC
    @IBAction func loginAction(_ sender: Any) {
        self.goToLoginPage()
    }
    
    //MARK:- go Sign Up VC
    @IBAction func regitserAction(_ sender: Any) {
        self.goToSignUp()
    }
}

