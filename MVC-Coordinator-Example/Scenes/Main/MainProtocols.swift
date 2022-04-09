//
//  MainProtocols.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 09.04.2022.
//

import UIKit

// Protocol Input ViewController
// Здесь мы говорим контроллеру какая есть модель и вью, и какие действия они могут делать
// Реализуем протокол в контроллере для передачи в свойство вью

protocol MainViewInput: AnyObject {

    var mainView: MainControllerOutput? { get set }
    var mainModel: MainControllerInput? { get set }
    func createTextLabelModel()
    func openSecond(_ sender: UIButton)
}

// Protocol Output ViewController is Model
// Контроллер говорит модели что сделать

protocol MainModelOutput: AnyObject {
    func modelValue(text: String)
}


// Protocol Output View
// Протокол говорит что передать контроллеру из вью

protocol MainControllerOutput: AnyObject {

    var controller: MainViewInput? { get set }
    func createTextLabel(title: String)
}

// Protocol Input Model
// Протокол говорит модели в контроллер

protocol MainControllerInput: AnyObject {

    var controller: MainModelOutput? { get set }
    func createModel()
}
