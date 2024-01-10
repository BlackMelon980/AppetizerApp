//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Francesca Capodanno on 10/01/24.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}

    //funzione che ritorna o un array di Appetizer oppure un errore
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        //controllo url
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        // chiamata url per recuperare i dati
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            //se error è valorizzato allora lancio errore
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            // se la risposta non è nulla controlla se è 200
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
