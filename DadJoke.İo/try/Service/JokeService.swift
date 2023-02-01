//
//  NumberService.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import Foundation

//MARK: - Data Yükleme Servisi
final class DownloadService {
    var jokemodel : joke?
    //MARK: - Completion'lı fonksiyon
    func downloadService(completion: @escaping (joke?) -> ()) {
        //MARK: - Url Kontrolü optinal dan çıkarmak için
        guard let url = URL(string: APIUrl.number()) else { return }
        
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            //MARK: - Switch Case İle Kontrol Sağlamak için
            switch result {
            case .success(let data): // success data
                completion(self.handleWithData(data))
            case .failure(let error): // error part
                self.handleWithError(error)
            }
        }
    }
    //MARK: - Error u Ele Aldığımız Kısım
    private func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    //MARK: - Data'yı ele aldığımız işlediğimiz kısım ( decode )
    private func handleWithData(_ data: Data) -> joke? {
        do {
            let JsonDec = try JSONDecoder().decode(joke.self, from: data)
            self.jokemodel = JsonDec
            return JsonDec
        } catch {
            print(error)
            return nil
        }
    }
}
