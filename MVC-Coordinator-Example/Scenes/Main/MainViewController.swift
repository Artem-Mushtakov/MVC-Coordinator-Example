//
//  MainViewController.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties

    var coordinator: MainStartFlow?

    var mainView: MainControllerOutput?
    var mainModel: MainControllerInput?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView as? UIView
    }
}

extension MainViewController: MainViewInput {

    func openSecond(_ sender: UIButton) {
        coordinator?.coordinateSecondViewController()
    }

    func createTextLabelModel() {
        mainModel?.createModel()
    }
}

extension MainViewController: MainModelOutput {

    func modelValue(text: String) {
        mainView?.createTextLabel(title: text)
    }
}
