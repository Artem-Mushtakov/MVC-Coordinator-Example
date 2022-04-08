//
//  AppCoordinator.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

class AppCoordinator: CoordinatorBase {
    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        let mainStartCoordinator = MainStartCoordinator(navigationController: navigationController)
        coordinate(to: mainStartCoordinator)
    }
}
