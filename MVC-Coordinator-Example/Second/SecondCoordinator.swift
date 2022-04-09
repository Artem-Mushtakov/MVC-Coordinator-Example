//
//  SecondCoordinator.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

protocol SecondCoordinateFlow: AnyObject {
    func coordinateBackMain()
}

class SecondCoordinator: CoordinatorBase, SecondCoordinateFlow {

    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let secondViewController = SecondViewController()
        let view = SecondView()
        view.controller = secondViewController
        secondViewController.coordinator = self
        secondViewController.secondView = view

        navigationController.pushViewController(secondViewController, animated: true)
    }

    // MARK: - Flow Methods

    func coordinateBackMain() {
        print("Open back main")
        let mainStartCoordinator = MainStartCoordinator(navigationController: navigationController)
        coordinate(to: mainStartCoordinator)
    }
}
