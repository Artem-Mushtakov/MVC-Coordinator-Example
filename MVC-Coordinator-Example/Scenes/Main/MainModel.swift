//
//  MainModel.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import Foundation

class MainModel {

    weak var controller: MainModelOutput?

    var arrayModel = "One"
}

extension MainModel: MainControllerInput {

    func createModel() {
        controller?.modelValue(text: arrayModel)
    }
}
