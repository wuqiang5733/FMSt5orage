//
//  AppDelegate.swift
//  FMStorage
//
//  Created by WuQiang on 2017/3/11.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        let list: [String : Any] = ["color": 0, "editable": true, "correction": false]
        let defaultValues = UserDefaults.standard
        defaultValues.register(defaults: list)
        return true
    }
}
