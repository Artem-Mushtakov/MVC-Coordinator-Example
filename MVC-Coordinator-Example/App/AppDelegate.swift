//
//  AppDelegate.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        coordinator = AppCoordinator(window: window!)
        coordinator?.start()

        return true
    }
}
