//
//  AppDelegate.swift
//  MALCOEXAM
//
//  Created by Mostafa on 2/4/21.
//  Copyright © 2021 admin1. All rights reserved.
//

import UIKit
import IQKeyboardManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        IQKeyboardManager.shared().
        
        IQKeyboardManager.shared().isEnabled = true
        
        let semanticAttribue: UISemanticContentAttribute
        semanticAttribue = .forceRightToLeft
        UISearchBar.appearance().semanticContentAttribute = semanticAttribue

        return true
    }

}

