//
//  Protocols.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import Foundation
//MARK: - Ana protocoller
protocol PresenterToInteractorProtocol {
    var presenter : InteractorToPresenterProtocol? {get set}
    func getJoke()
    
}

protocol ViewToPresenterProtocol {
    var interactor : PresenterToInteractorProtocol? {get set}
    var view : PresenterToViewProtocol? {get set}
    func modeljoke()
    
}

//MARK: -  Taşıyıcı Protocol
protocol InteractorToPresenterProtocol {
    func presenterPush(data : Attachment)
}

protocol PresenterToViewProtocol {
    func viewPush(data : Attachment)
}

protocol PresenterToRouterProtocol {
    static func createModule(ref : ViewController)
}
