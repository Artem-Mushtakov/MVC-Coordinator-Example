//
//  SecondViewController.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties

    var coordinator: SecondCoordinator?

    var secondView: SecondControllerOutput?
    var secondModel: SecondControllerInput?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = secondView as? UIView
    }

    // MARK: - Actions
    @objc func startTapped(_ sender: UIButton) {
        coordinator?.coordinateBackMain()
    }
}

extension SecondViewController: SecondViewInput {

    func createTextLabelModel() {
        secondView?.createTextLabel(title: "44444")
    }

    func openMain(_ sender: UIButton) {
        startTapped(sender)
    }

    
}
