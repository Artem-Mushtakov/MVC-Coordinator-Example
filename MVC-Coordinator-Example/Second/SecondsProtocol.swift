//
//  SecondsProtocol.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 09.04.2022.
//

import UIKit

// Protocol Input ViewController
// Здесь мы говорим контроллеру какая есть модель и вью, и какие действия они могут делать
// Реализуем протокол в контроллере для передачи в свойство вью

protocol SecondViewInput: AnyObject {

    var secondView: SecondControllerOutput? { get set }
    var secondModel: SecondControllerInput? { get set }
    func createTextLabelModel()
    func openMain(_ sender: UIButton)
}

// Protocol Output ViewController is Model
// Контроллер говорит модели что сделать

protocol SecondModelOutput: AnyObject {
    func modelValue(text: String)
}


// Protocol Output View
// Протокол говорит что передать контроллеру из вью

protocol SecondControllerOutput: AnyObject {

    var controller: SecondViewInput? { get set }
    func createTextLabel(title: String)
}

// Protocol Input Model
// Протокол говорит модели в контроллер

protocol SecondControllerInput: AnyObject {

    var controller: SecondModelOutput? { get set }
    func createModel()
}

