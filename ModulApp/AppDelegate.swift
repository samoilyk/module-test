//
//  AppDelegate.swift
//  ModulApp
//
//  Created by Ievgen Samoilyk on 17.06.2021.
//

import ModulCore
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
            
        let vc = ViewController.storyboardVC
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = vc

        return true
    }
}

