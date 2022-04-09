//
//  MainCoordinator.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

protocol MainStartFlow: AnyObject {
    func coordinateSecondViewController()
}

class MainStartCoordinator: CoordinatorBase, MainStartFlow {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let mainViewController = MainViewController()
        let mainView = MainView()
        let mainModel = MainModel()
        mainViewController.mainView = mainView
        mainViewController.mainModel = mainModel
        mainViewController.coordinator = self
        mainView.controller = mainViewController
        navigationController.pushViewController(mainViewController, animated: true)
    }

    // MARK: - Flow Methods

    func coordinateSecondViewController() {
        let secondViewControllerCoordinator = SecondCoordinator(navigationController: navigationController)
        coordinate(to: secondViewControllerCoordinator)
    }
}
