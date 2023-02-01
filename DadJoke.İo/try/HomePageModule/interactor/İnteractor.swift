//
//  İnteractor.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import Foundation

final class Interactor : PresenterToInteractorProtocol {
    
   private var dataJK : [Attachment]?
    var kekjk : Attachment?
    var presenter: InteractorToPresenterProtocol?
    
    private let service = DownloadService()
    
    func getJoke() {
        service.downloadService { [weak self] result in
            guard let self = self else { return }
            guard let result = result else { return }
            
            self.dataJK = result.attachments
            
            self.kekjk = self.dataJK?.first
            
            self.presenter?.presenterPush(data: self.kekjk!)
            
        }
        
        
    }
    
    
    
}

