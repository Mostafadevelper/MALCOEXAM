//
//  AuthRequestParameters.swift
//  MALCOEXAM
//
//  Created by Mostafa on 2/4/21.
//  Copyright © 2021 admin1. All rights reserved.
//

import Foundation

class AuthRequestParameters: RequestParamters {
    var email: String?
    var password: String?


    init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    private enum CodingKeys: String, CodingKey {
        case password
        case email
    }
}
