//
//  AppDelegate.swift
//  OG-Emoji
//
//  Created by Edward Salter on 8/14/20.
//  Copyright © 2020 theiOSdev. All rights reserved.
//

import UIKit
import Swifter
import TwitterKit

enum AuthorizationMode {
    @available(iOS, deprecated: 11.0)
    case acaccount
    case browser
    case sso
    
    var isUsingSSO: Bool {
        return self == .sso
    }
}

let authorizationMode: AuthorizationMode = .browser

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        TWTRTwitter.sharedInstance().start(withConsumerKey:TwitterConstants.CONSUMER_KEY, consumerSecret: TwitterConstants.CONSUMER_SECRET_KEY)
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let callbackUrl = URL(string: TwitterConstants.CALLBACK_URL)!
        Swifter.handleOpenURL(url, callbackURL: callbackUrl)
        return true
    }
    
//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//       return TWTRTwitter.sharedInstance().application(app, open: url, options: options)
//    }

    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
