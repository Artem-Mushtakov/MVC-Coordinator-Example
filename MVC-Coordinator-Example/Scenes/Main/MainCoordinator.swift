//
//  MainCoordinator.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

protocol MainStartFlow: AnyObject {
    func coordinateToTabBar()
}

class MainStartCoordinator: CoordinatorBase, MainStartFlow {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let mainViewController = MainViewController()
        mainViewController.coordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }

    // MARK: - Flow Methods
    func coordinateToTabBar() {
        print("Open TabBar")
//        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
//        coordinate(to: tabBarCoordinator)
    }
}
