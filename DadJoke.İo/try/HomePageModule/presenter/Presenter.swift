//
//  Presenter.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import Foundation

final class Presenter : ViewToPresenterProtocol {
    func modeljoke() {
        interactor?.getJoke()
    }
    

    var interactor: PresenterToInteractorProtocol?
    
    var view: PresenterToViewProtocol?

}

extension Presenter : InteractorToPresenterProtocol {
    func presenterPush(data : Attachment) {
        view?.viewPush(data: data)
        modeljoke()
    }

    
}
