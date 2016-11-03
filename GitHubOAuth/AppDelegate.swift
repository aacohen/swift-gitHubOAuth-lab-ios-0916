//
//  AppDelegate.swift
//  GitHubOAuth
//
//  Created by Joel Bell on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        print("GETTTING CALLED OPEN URL!!!")
        
        guard let sourceKey = options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String else { return false }
        
        print("SourceKey is : \(sourceKey)")
        
    
        if sourceKey == "com.apple.SafariViewService" {
            
            print("notification post about to be called")
            NotificationCenter.default.post(name: Notification.Name.closeSafariVC, object: url)
            
            return true
        }
        
        return false
    }

}

