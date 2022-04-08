//
//  CoordinatorBase.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import Foundation

import UIKit

protocol CoordinatorBase {
    func start()
    func coordinate(to coordinator: CoordinatorBase)
}

extension CoordinatorBase {
    func coordinate(to coordinator: CoordinatorBase) {
        coordinator.start()
    }
}
