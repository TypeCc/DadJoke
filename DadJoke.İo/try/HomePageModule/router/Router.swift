//
//  Router.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import Foundation

final class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        // view katmanı değişkenleri
        ref.presenterNesne = presenter
        // presenter katmanı değişkenleri
        ref.presenterNesne?.interactor = Interactor()
        ref.presenterNesne?.view = ref
        // İnteractor katmanı değişkenleri
        ref.presenterNesne?.interactor?.presenter = presenter
    }
    
    
}
