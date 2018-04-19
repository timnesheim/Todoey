//
//  AppDelegate.swift
//  Todoey
//
//  Created by Tim Nesheim on 4/12/18.
//  Copyright © 2018 Tim Nesheim. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // implementing realm
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        
        do {
             _ = try Realm()
        } catch {
            print("Error initializing new realm, \(error)")
        }
        
        
        return true
    }

}

