//
//  Request.swift
//  Datefy
//
//  Created by Efekan Güvendik on 21.09.2024.
//

import Foundation

class NetworkCall: ObservableObject {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService = URLSessionNetworkService()){
        self.networkService = networkService
    }
    
    func leadGetData(completion: @escaping ([Meal]) -> ()) {
        guard let url = URL(string: ServiceApiConstant.url) else {
            print("404 Invalid URL")
            return
        }
        
        networkService.fetcData(from: url) { data, response, error in
            if let error = error {
                print("Failed: \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                print("Failed to receive data")
                return
            }
            
            do {
                let platformResponse = try JSONDecoder().decode(PlatformResponse.self, from: data)
                if let meals = platformResponse.meals{
                    DispatchQueue.main.async {
                        completion(meals)
                    }
                }
            } catch {
                print("Decoding error: \(error)")
            }
        }
    }
}
